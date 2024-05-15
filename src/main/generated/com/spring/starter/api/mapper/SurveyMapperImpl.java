package com.spring.starter.api.mapper;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-05-10T20:10:49+0900",
    comments = "version: 1.4.2.Final, compiler: javac, environment: Java 11 (Oracle Corporation)"
)
@Component
public class SurveyMapperImpl implements SurveyMapper {

    @Override
    public Survey surveyDtoToEntity(SurveyDto surveyDto) {
        if ( surveyDto == null ) {
            return null;
        }

        SurveyBuilder survey = Survey.builder();

        survey.name( surveyDto.getName() );
        survey.graduate( surveyDto.getGraduate() );
        survey.company( surveyDto.getCompany() );
        survey.question1( surveyDto.getQuestion1() );
        survey.question2( surveyDto.getQuestion2() );
        survey.question3( surveyDto.getQuestion3() );
        survey.question4( surveyDto.getQuestion4() );
        survey.question5( surveyDto.getQuestion5() );
        survey.question6( surveyDto.getQuestion6() );
        survey.question7( surveyDto.getQuestion7() );
        survey.question8( surveyDto.getQuestion8() );
        survey.question9( surveyDto.getQuestion9() );
        survey.question10( surveyDto.getQuestion10() );
        survey.question11( surveyDto.getQuestion11() );
        survey.question12( surveyDto.getQuestion12() );
        survey.question13( surveyDto.getQuestion13() );

        return survey.build();
    }

    @Override
    public SurveyDto surveyEntityToDto(Survey survey) {
        if ( survey == null ) {
            return null;
        }

        SurveyDtoBuilder surveyDto = SurveyDto.builder();

        surveyDto.name( survey.getName() );
        surveyDto.graduate( survey.getGraduate() );
        surveyDto.company( survey.getCompany() );
        surveyDto.question1( survey.getQuestion1() );
        surveyDto.question2( survey.getQuestion2() );
        surveyDto.question3( survey.getQuestion3() );
        surveyDto.question4( survey.getQuestion4() );
        surveyDto.question5( survey.getQuestion5() );
        surveyDto.question6( survey.getQuestion6() );
        surveyDto.question7( survey.getQuestion7() );
        surveyDto.question8( survey.getQuestion8() );
        surveyDto.question9( survey.getQuestion9() );
        surveyDto.question10( survey.getQuestion10() );
        surveyDto.question11( survey.getQuestion11() );
        surveyDto.question12( survey.getQuestion12() );
        surveyDto.question13( survey.getQuestion13() );

        return surveyDto.build();
    }

    @Override
    public List<SurveyDto> surveyListToDto(List<Survey> surveyList) {
        if ( surveyList == null ) {
            return null;
        }

        List<SurveyDto> list = new ArrayList<SurveyDto>( surveyList.size() );
        for ( Survey survey : surveyList ) {
            list.add( surveyEntityToDto( survey ) );
        }

        return list;
    }
}
