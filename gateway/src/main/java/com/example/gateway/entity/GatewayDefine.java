package com.example.gateway.entity;


import com.alibaba.fastjson.JSON;
import lombok.Data;
import org.springframework.cloud.gateway.filter.FilterDefinition;
import org.springframework.cloud.gateway.handler.predicate.PredicateDefinition;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Data
@Table(name = "gateway_define")
public class GatewayDefine implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String id;

    private String uri;

    private String predicates;

    private String filters;

    public List<PredicateDefinition> getPredicateDefinition() {
        if (this.predicates != null) {
            List<PredicateDefinition> predicateDefinitionList = JSON.parseArray(this.predicates, PredicateDefinition.class);
            return predicateDefinitionList;
        } else {
            return null;
        }
    }

    public List<FilterDefinition> getFilterDefinition() {
        if (this.filters != null) {
            List<FilterDefinition> filterDefinitionList = JSON.parseArray(this.filters, FilterDefinition.class);
            return filterDefinitionList;
        } else {
            return null;
        }
    }

    @Override
    public String toString() {
        return "GatewayDefine{" +
                "id='" + id + '\'' +
                ", uri='" + uri + '\'' +
                ", predicates='" + predicates + '\'' +
                ", filters='" + filters + '\'' +
                '}';
    }
}
