KenjiPhoneCalleeScript:
	farwritetext UnusedPhoneText

	; gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI3
	; farscall PhoneScript_AnswerPhone_Male
	; farsjump KenjiAnswerPhoneScript

KenjiPhoneCallerScript:
	farwritetext UnusedPhoneText

	; gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI3
	; farscall PhoneScript_GreetPhone_Male
	; farsjump KenjiCallingPhoneScript
