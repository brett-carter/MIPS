############## Brett Carter's Quick Sort #########################

.data

str0:	.asciiz	"Four"
str1:	.asciiz	"score"
str2:	.asciiz	"and"
str3:	.asciiz	"seven"
str4:	.asciiz	"years"
str5:	.asciiz	"ago"
str6:	.asciiz	"our"
str7:	.asciiz	"fathers"
str8:	.asciiz	"brought"
str9:	.asciiz	"forth"
str10:	.asciiz	"on"
str11:	.asciiz	"this"
str12:	.asciiz	"continent"
str13:	.asciiz	"a"
str14:	.asciiz	"new"
str15:	.asciiz	"nation"
str16:	.asciiz	"conceived"
str17:	.asciiz	"in"
str18:	.asciiz	"liberty"
str19:	.asciiz	"and"
str20:	.asciiz	"dedicated"
str21:	.asciiz	"to"
str22:	.asciiz	"the"
str23:	.asciiz	"proposition"
str24:	.asciiz	"that"
str25:	.asciiz	"all"
str26:	.asciiz	"men"
str27:	.asciiz	"are"
str28:	.asciiz	"created"
str29:	.asciiz	"equal"
str30:	.asciiz	"Now"
str31:	.asciiz	"we"
str32:	.asciiz	"are"
str33:	.asciiz	"engaged"
str34:	.asciiz	"in"
str35:	.asciiz	"a"
str36:	.asciiz	"great"
str37:	.asciiz	"civil"
str38:	.asciiz	"war"
str39:	.asciiz	"testing"
str40:	.asciiz	"whether"
str41:	.asciiz	"that"
str42:	.asciiz	"nation"
str43:	.asciiz	"or"
str44:	.asciiz	"any"
str45:	.asciiz	"nation"
str46:	.asciiz	"so"
str47:	.asciiz	"conceived"
str48:	.asciiz	"and"
str49:	.asciiz	"so"
str50:	.asciiz	"dedicated"
str51:	.asciiz	"can"
str52:	.asciiz	"long"
str53:	.asciiz	"endure"
str54:	.asciiz	"We"
str55:	.asciiz	"are"
str56:	.asciiz	"met"
str57:	.asciiz	"on"
str58:	.asciiz	"a"
str59:	.asciiz	"great"
str60:	.asciiz	"battlefield"
str61:	.asciiz	"of"
str62:	.asciiz	"that"
str63:	.asciiz	"war"
str64:	.asciiz	"We"
str65:	.asciiz	"have"
str66:	.asciiz	"come"
str67:	.asciiz	"to"
str68:	.asciiz	"dedicate"
str69:	.asciiz	"a"
str70:	.asciiz	"portion"
str71:	.asciiz	"of"
str72:	.asciiz	"that"
str73:	.asciiz	"field"
str74:	.asciiz	"as"
str75:	.asciiz	"a"
str76:	.asciiz	"final"
str77:	.asciiz	"resting"
str78:	.asciiz	"place"
str79:	.asciiz	"for"
str80:	.asciiz	"those"
str81:	.asciiz	"who"
str82:	.asciiz	"here"
str83:	.asciiz	"gave"
str84:	.asciiz	"their"
str85:	.asciiz	"lives"
str86:	.asciiz	"that"
str87:	.asciiz	"that"
str88:	.asciiz	"nation"
str89:	.asciiz	"might"
str90:	.asciiz	"live"
str91:	.asciiz	"It"
str92:	.asciiz	"is"
str93:	.asciiz	"altogether"
str94:	.asciiz	"fitting"
str95:	.asciiz	"and"
str96:	.asciiz	"proper"
str97:	.asciiz	"that"
str98:	.asciiz	"we"
str99:	.asciiz	"should"
str100:	.asciiz	"do"
str101:	.asciiz	"this"
str102:	.asciiz	"But"
str103:	.asciiz	"in"
str104:	.asciiz	"a"
str105:	.asciiz	"larger"
str106:	.asciiz	"sense"
str107:	.asciiz	"we"
str108:	.asciiz	"cannot"
str109:	.asciiz	"dedicate"
str110:	.asciiz	"we"
str111:	.asciiz	"cannot"
str112:	.asciiz	"consecrate"
str113:	.asciiz	"we"
str114:	.asciiz	"cannot"
str115:	.asciiz	"hallow"
str116:	.asciiz	"this"
str117:	.asciiz	"ground"
str118:	.asciiz	"The"
str119:	.asciiz	"brave"
str120:	.asciiz	"men"
str121:	.asciiz	"living"
str122:	.asciiz	"and"
str123:	.asciiz	"dead"
str124:	.asciiz	"who"
str125:	.asciiz	"struggled"
str126:	.asciiz	"here"
str127:	.asciiz	"have"
str128:	.asciiz	"consecrated"
str129:	.asciiz	"it"
str130:	.asciiz	"far"
str131:	.asciiz	"above"
str132:	.asciiz	"our"
str133:	.asciiz	"poor"
str134:	.asciiz	"power"
str135:	.asciiz	"to"
str136:	.asciiz	"add"
str137:	.asciiz	"or"
str138:	.asciiz	"detract"
str139:	.asciiz	"The"
str140:	.asciiz	"world"
str141:	.asciiz	"will"
str142:	.asciiz	"little"
str143:	.asciiz	"note"
str144:	.asciiz	"nor"
str145:	.asciiz	"long"
str146:	.asciiz	"remember"
str147:	.asciiz	"what"
str148:	.asciiz	"we"
str149:	.asciiz	"say"
str150:	.asciiz	"here"
str151:	.asciiz	"but"
str152:	.asciiz	"it"
str153:	.asciiz	"can"
str154:	.asciiz	"never"
str155:	.asciiz	"forget"
str156:	.asciiz	"what"
str157:	.asciiz	"they"
str158:	.asciiz	"did"
str159:	.asciiz	"here"
str160:	.asciiz	"It"
str161:	.asciiz	"is"
str162:	.asciiz	"for"
str163:	.asciiz	"us"
str164:	.asciiz	"the"
str165:	.asciiz	"living"
str166:	.asciiz	"rather"
str167:	.asciiz	"to"
str168:	.asciiz	"be"
str169:	.asciiz	"dedicated"
str170:	.asciiz	"here"
str171:	.asciiz	"to"
str172:	.asciiz	"the"
str173:	.asciiz	"unfinished"
str174:	.asciiz	"work"
str175:	.asciiz	"which"
str176:	.asciiz	"they"
str177:	.asciiz	"who"
str178:	.asciiz	"fought"
str179:	.asciiz	"here"
str180:	.asciiz	"have"
str181:	.asciiz	"thus"
str182:	.asciiz	"far"
str183:	.asciiz	"so"
str184:	.asciiz	"nobly"
str185:	.asciiz	"advanced"
str186:	.asciiz	"It"
str187:	.asciiz	"is"
str188:	.asciiz	"rather"
str189:	.asciiz	"for"
str190:	.asciiz	"us"
str191:	.asciiz	"to"
str192:	.asciiz	"be"
str193:	.asciiz	"here"
str194:	.asciiz	"dedicated"
str195:	.asciiz	"to"
str196:	.asciiz	"the"
str197:	.asciiz	"great"
str198:	.asciiz	"task"
str199:	.asciiz	"remaining"
str200:	.asciiz	"before"
str201:	.asciiz	"us"
str202:	.asciiz	"that"
str203:	.asciiz	"from"
str204:	.asciiz	"these"
str205:	.asciiz	"honored"
str206:	.asciiz	"dead"
str207:	.asciiz	"we"
str208:	.asciiz	"take"
str209:	.asciiz	"increased"
str210:	.asciiz	"devotion"
str211:	.asciiz	"to"
str212:	.asciiz	"that"
str213:	.asciiz	"cause"
str214:	.asciiz	"for"
str215:	.asciiz	"which"
str216:	.asciiz	"they"
str217:	.asciiz	"gave"
str218:	.asciiz	"the"
str219:	.asciiz	"last"
str220:	.asciiz	"full"
str221:	.asciiz	"measure"
str222:	.asciiz	"of"
str223:	.asciiz	"devotion"
str224:	.asciiz	"that"
str225:	.asciiz	"we"
str226:	.asciiz	"here"
str227:	.asciiz	"highly"
str228:	.asciiz	"resolve"
str229:	.asciiz	"that"
str230:	.asciiz	"these"
str231:	.asciiz	"dead"
str232:	.asciiz	"shall"
str233:	.asciiz	"not"
str234:	.asciiz	"have"
str235:	.asciiz	"died"
str236:	.asciiz	"in"
str237:	.asciiz	"vain"
str238:	.asciiz	"that"
str239:	.asciiz	"this"
str240:	.asciiz	"nation"
str241:	.asciiz	"under"
str242:	.asciiz	"God"
str243:	.asciiz	"shall"
str244:	.asciiz	"have"
str245:	.asciiz	"a"
str246:	.asciiz	"new"
str247:	.asciiz	"birth"
str248:	.asciiz	"of"
str249:	.asciiz	"freedom"
str250:	.asciiz	"and"
str251:	.asciiz	"that"
str252:	.asciiz	"government"
str253:	.asciiz	"of"
str254:	.asciiz	"the"
str255:	.asciiz	"people"
str256:	.asciiz	"by"
str257:	.asciiz	"the"
str258:	.asciiz	"people"
str259:	.asciiz	"for"
str260:	.asciiz	"the"
str261:	.asciiz	"people"
str262:	.asciiz	"shall"
str263:	.asciiz	"not"
str264:	.asciiz	"perish"
str265:	.asciiz	"from"
str266:	.asciiz	"the"
str267:	.asciiz	"earth"

sarray:	.word	str0
	.word	str1
	.word	str2
	.word	str3
	.word	str4
	.word	str5
	.word	str6
	.word	str7
	.word	str8
	.word	str9
	.word	str10
	.word	str11
	.word	str12
	.word	str13
	.word	str14
	.word	str15
	.word	str16
	.word	str17
	.word	str18
	.word	str19
	.word	str20
	.word	str21
	.word	str22
	.word	str23
	.word	str24
	.word	str25
	.word	str26
	.word	str27
	.word	str28
	.word	str29
	.word	str30
	.word	str31
	.word	str32
	.word	str33
	.word	str34
	.word	str35
	.word	str36
	.word	str37
	.word	str38
	.word	str39
	.word	str40
	.word	str41
	.word	str42
	.word	str43
	.word	str44
	.word	str45
	.word	str46
	.word	str47
	.word	str48
	.word	str49
	.word	str50
	.word	str51
	.word	str52
	.word	str53
	.word	str54
	.word	str55
	.word	str56
	.word	str57
	.word	str58
	.word	str59
	.word	str60
	.word	str61
	.word	str62
	.word	str63
	.word	str64
	.word	str65
	.word	str66
	.word	str67
	.word	str68
	.word	str69
	.word	str70
	.word	str71
	.word	str72
	.word	str73
	.word	str74
	.word	str75
	.word	str76
	.word	str77
	.word	str78
	.word	str79
	.word	str80
	.word	str81
	.word	str82
	.word	str83
	.word	str84
	.word	str85
	.word	str86
	.word	str87
	.word	str88
	.word	str89
	.word	str90
	.word	str91
	.word	str92
	.word	str93
	.word	str94
	.word	str95
	.word	str96
	.word	str97
	.word	str98
	.word	str99
	.word	str100
	.word	str101
	.word	str102
	.word	str103
	.word	str104
	.word	str105
	.word	str106
	.word	str107
	.word	str108
	.word	str109
	.word	str110
	.word	str111
	.word	str112
	.word	str113
	.word	str114
	.word	str115
	.word	str116
	.word	str117
	.word	str118
	.word	str119
	.word	str120
	.word	str121
	.word	str122
	.word	str123
	.word	str124
	.word	str125
	.word	str126
	.word	str127
	.word	str128
	.word	str129
	.word	str130
	.word	str131
	.word	str132
	.word	str133
	.word	str134
	.word	str135
	.word	str136
	.word	str137
	.word	str138
	.word	str139
	.word	str140
	.word	str141
	.word	str142
	.word	str143
	.word	str144
	.word	str145
	.word	str146
	.word	str147
	.word	str148
	.word	str149
	.word	str150
	.word	str151
	.word	str152
	.word	str153
	.word	str154
	.word	str155
	.word	str156
	.word	str157
	.word	str158
	.word	str159
	.word	str160
	.word	str161
	.word	str162
	.word	str163
	.word	str164
	.word	str165
	.word	str166
	.word	str167
	.word	str168
	.word	str169
	.word	str170
	.word	str171
	.word	str172
	.word	str173
	.word	str174
	.word	str175
	.word	str176
	.word	str177
	.word	str178
	.word	str179
	.word	str180
	.word	str181
	.word	str182
	.word	str183
	.word	str184
	.word	str185
	.word	str186
	.word	str187
	.word	str188
	.word	str189
	.word	str190
	.word	str191
	.word	str192
	.word	str193
	.word	str194
	.word	str195
	.word	str196
	.word	str197
	.word	str198
	.word	str199
	.word	str200
	.word	str201
	.word	str202
	.word	str203
	.word	str204
	.word	str205
	.word	str206
	.word	str207
	.word	str208
	.word	str209
	.word	str210
	.word	str211
	.word	str212
	.word	str213
	.word	str214
	.word	str215
	.word	str216
	.word	str217
	.word	str218
	.word	str219
	.word	str220
	.word	str221
	.word	str222
	.word	str223
	.word	str224
	.word	str225
	.word	str226
	.word	str227
	.word	str228
	.word	str229
	.word	str230
	.word	str231
	.word	str232
	.word	str233
	.word	str234
	.word	str235
	.word	str236
	.word	str237
	.word	str238
	.word	str239
	.word	str240
	.word	str241
	.word	str242
	.word	str243
	.word	str244
	.word	str245
	.word	str246
	.word	str247
	.word	str248
	.word	str249
	.word	str250
	.word	str251
	.word	str252
	.word	str253
	.word	str254
	.word	str255
	.word	str256
	.word	str257
	.word	str258
	.word	str259
	.word	str260
	.word	str261
	.word	str262
	.word	str263
	.word	str264
	.word	str265
	.word	str266
	.word	str267
	
arraylength:	.word 267

.text

main:	la $s0, sarray			# array
	addi $sp, $sp,-8
	sw $s0,0($sp)		#put the arry and return address oon the stack
	sw $ra,4($sp)
	add $s1, $zero, $zero	#zero out the used $s registers
	add $s2, $zero, $zero
	add $s3, $zero, $zero 
	add $s4, $zero, $zero
	jal quicksort
	
	addi $sp, $sp, 8
	
	
###################################
# quicksort standard $s registers #
#$s0: left  
#$s1: i	    
#$s2: right
#$s3: j
#$s4: pivot (not saved on stack)
#
#		
##################################

quicksort:	
		addi $sp, $sp, -20
		sw $ra, 0($sp)		#store return
		sw $s0, 4($sp)		#store left
		sw $s1, 8($sp)		#store i
		sw $s2, 12($sp)		#store right
		sw $s3, 16($sp) 	#store j
		
		
		sub $t1, $s2, $s0	#right - left = new section length
		sll $t1, $t1, 2 	#divide by 2
		move $s4, $t1		#the pivot point location
		#set the initial i and j here
		move $s1, $s0 		#set i
		move $s3, $s2		#set j
		
		
Loopi:		move $a0, $s1		#set $a0 to i
		move $a1, $s4		#set $a1 to pivot
		jal Strgcmpr
		move $s1, $a0		#set the i pointer before incrementing incase we dont loop
		addi $a0,$a0, 4		#increment i for if you loop again
		blt $v0, 0, Loopi	#loop again if less

Loopj:		move $a0, $s3		#set $a0 to j
		move $a1, $s4		#set $a1 to pivot
		jal Strgcmpr
		move $s3, $a0		#set the j pointer before incrementing incase we dont loop
		addi $a0, $a0, -4	#increment j for if you loop again
		bgt $v0, 0, Loopj
		jal swap
		#check if i is still less then j
		#if equal increment past and split
		#if still less then swap and re-loop.
		
		sub $t1, $s1, $s3	#make a check if i is still less than j
		bge $t1,0, partition	#jump to partition the array if i gets to j
		j Loopi			#if i is still less then j continue swapping


swap:		lw $t1,0($s1)		#load the word at i
		lw $t2,0($s3)		#load the word at j
		sw $s1,0($t2)		#store j value in i
		sw $s3,0($t1)		#store i value in j
		jr $ra
		
		
partition:	#left array
		move $s2, $s3		#set right to j
		jal quicksort		#sort left half
		#right array
		move $s0, $s1		#set left to i
		jal quicksort		#sort right half
		addi $sp, $sp, 20	#restore the stack for return call.
		jr $ra			#return recursively back to beginning
						
##############################################################################		
Strgcmpr:	lb $t1, 0($a0)		#load first bit of string one (i or j)
		lb $t2, 0($a1)		#load first bit of string two (pivot)
		sub $v0, $t1, $t2	#subtract the two registers to find if left is less (-), greater(+), equal (0)
		addi $a0, $a0, 1	#increment to next bit
		addi $a1, $a1, 1	#increment to next bit
		bne $v0, $zero, noteq	#branch to return if the strings are not equal
		bne $t1, $zero, Strgcmpr#they were equal, check to make sure string is not at the end, loop
noteq:		jr $ra
##############################################################################

