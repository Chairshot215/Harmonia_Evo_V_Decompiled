.class public Lcom/android/voicedialer/CommandRecognizerEngine;
.super Lcom/android/voicedialer/RecognizerEngine;
.source "CommandRecognizerEngine.java"


# static fields
.field private static final MINIMUM_CONFIDENCE:I = 0x64

.field private static final OPEN_ENTRIES:Ljava/lang/String; = "openentries.txt"

.field public static final PHONE_TYPE_EXTRA:Ljava/lang/String; = "phone_type"

.field private static final mLatin1Base:I = 0xc0

.field private static final mLatin1Letters:[C = null

.field private static final mNanpFormats:Ljava/lang/String; = "xxx xxx xxxx\nxxx xxxx\nx11\n"

.field private static final mPlusFormats:Ljava/lang/String; = "+1 xxx xxx xxxx\n+20 x xxx xxxx\n+20 1x xxx xxxx\n+20 xx xxx xxxx\n+20 xxx xxx xxxx\n+212 xxxx xxxx\n+213 xx xx xx xx\n+213 xx xxx xxxx\n+216 xx xxx xxx\n+218 xx xxx xxx\n+22x \n+23x \n+24x \n+25x \n+26x \n+27 xx xxx xxxx\n+290 x xxx\n+291 x xxx xxx\n+297 xxx xxxx\n+298 xxx xxx\n+299 xxx xxx\n+30 xxx xxx xxxx\n+31 6 xxxx xxxx\n+31 xx xxx xxxx\n+31 xxx xx xxxx\n+32 2 xxx xx xx\n+32 3 xxx xx xx\n+32 4xx xx xx xx\n+32 9 xxx xx xx\n+32 xx xx xx xx\n+33 xxx xxx xxx\n+34 xxx xxx xxx\n+351 3xx xxx xxx\n+351 7xx xxx xxx\n+351 8xx xxx xxx\n+351 xx xxx xxxx\n+352 xx xxxx\n+352 6x1 xxx xxx\n+352 \n+353 xxx xxxx\n+353 xxxx xxxx\n+353 xx xxx xxxx\n+354 3xx xxx xxx\n+354 xxx xxxx\n+355 6x xxx xxxx\n+355 xxx xxxx\n+356 xx xx xx xx\n+357 xx xx xx xx\n+358 \n+359 \n+36 1 xxx xxxx\n+36 20 xxx xxxx\n+36 21 xxx xxxx\n+36 30 xxx xxxx\n+36 70 xxx xxxx\n+36 71 xxx xxxx\n+36 xx xxx xxx\n+370 6x xxx xxx\n+370 xxx xx xxx\n+371 xxxx xxxx\n+372 5 xxx xxxx\n+372 xxx xxxx\n+373 6xx xx xxx\n+373 7xx xx xxx\n+373 xxx xxxxx\n+374 xx xxx xxx\n+375 xx xxx xxxx\n+376 xx xx xx\n+377 xxxx xxxx\n+378 xxx xxx xxxx\n+380 xxx xx xx xx\n+381 xx xxx xxxx\n+382 xx xxx xxxx\n+385 xx xxx xxxx\n+386 x xxx xxxx\n+387 xx xx xx xx\n+389 2 xxx xx xx\n+389 xx xx xx xx\n+39 xxx xxx xxx\n+39 3xx xxx xxxx\n+39 xx xxxx xxxx\n+40 xxx xxx xxx\n+41 xx xxx xx xx\n+420 xxx xxx xxx\n+421 xxx xxx xxx\n+421 xxx xxx xxxx\n+43 \n+44 xxx xxx xxxx\n+45 xx xx xx xx\n+46 \n+47 xxxx xxxx\n+48 xx xxx xxxx\n+49 1xx xxxx xxx\n+49 1xx xxxx xxxx\n+49 \n+50x \n+51 9xx xxx xxx\n+51 1 xxx xxxx\n+51 xx xx xxxx\n+52 1 xxx xxx xxxx\n+52 xxx xxx xxxx\n+53 xxxx xxxx\n+54 9 11 xxxx xxxx\n+54 9 xxx xxx xxxx\n+54 11 xxxx xxxx\n+54 xxx xxx xxxx\n+55 xx xxxx xxxx\n+56 2 xxxxxx\n+56 9 xxxx xxxx\n+56 xx xxxxxx\n+56 xx xxxxxxx\n+57 x xxx xxxx\n+57 3xx xxx xxxx\n+58 xxx xxx xxxx\n+59x \n+60 3 xxxx xxxx\n+60 8x xxxxxx\n+60 x xxx xxxx\n+60 14 x xxx xxxx\n+60 1x xxx xxxx\n+60 x xxxx xxxx\n+60 \n+61 4xx xxx xxx\n+61 x xxxx xxxx\n+62 8xx xxxx xxxx\n+62 21 xxxxx\n+62 xx xxxxxx\n+62 xx xxx xxxx\n+62 xx xxxx xxxx\n+63 2 xxx xxxx\n+63 xx xxx xxxx\n+63 9xx xxx xxxx\n+64 2 xxx xxxx\n+64 2 xxx xxxx x\n+64 2 xxx xxxx xx\n+64 x xxx xxxx\n+65 xxxx xxxx\n+66 8 xxxx xxxx\n+66 2 xxx xxxx\n+66 xx xx xxxx\n+67x \n+68x \n+690 x xxx\n+691 xxx xxxx\n+692 xxx xxxx\n+7 6xx xx xxxxx\n+7 7xx 2 xxxxxx\n+7 7xx xx xxxxx\n+7 xxx xxx xx xx\n+81 3 xxxx xxxx\n+81 6 xxxx xxxx\n+81 xx xxx xxxx\n+81 x0 xxxx xxxx\n+82 2 xxx xxxx\n+82 2 xxxx xxxx\n+82 xx xxxx xxxx\n+82 xx xxx xxxx\n+84 4 xxxx xxxx\n+84 xx xxxx xxx\n+84 xx xxxx xxxx\n+850 \n+852 xxxx xxxx\n+853 xxxx xxxx\n+855 1x xxx xxx\n+855 9x xxx xxx\n+855 xx xx xx xx\n+856 20 x xxx xxx\n+856 xx xxx xxx\n+852 xxxx xxxx\n+86 10 xxxx xxxx\n+86 2x xxxx xxxx\n+86 xxx xxx xxxx\n+86 xxx xxxx xxxx\n+880 xx xxxx xxxx\n+886 \n+90 xxx xxx xxxx\n+91 9x xx xxxxxx\n+91 xx xxxx xxxx\n+92 xx xxx xxxx\n+92 3xx xxx xxxx\n+93 70 xxx xxx\n+93 xx xxx xxxx\n+94 xx xxx xxxx\n+95 1 xxx xxx\n+95 2 xxx xxx\n+95 xx xxxxx\n+95 9 xxx xxxx\n+960 xxx xxxx\n+961 x xxx xxx\n+961 xx xxx xxx\n+962 7 xxxx xxxx\n+962 x xxx xxxx\n+963 11 xxx xxxx\n+963 xx xxx xxx\n+964 \n+965 xxxx xxxx\n+966 5x xxx xxxx\n+966 x xxx xxxx\n+967 7xx xxx xxx\n+967 x xxx xxx\n+968 xxxx xxxx\n+970 5x xxx xxxx\n+970 x xxx xxxx\n+971 5x xxx xxxx\n+971 x xxx xxxx\n+972 5x xxx xxxx\n+972 x xxx xxxx\n+973 xxxx xxxx\n+974 xxx xxxx\n+975 1x xxx xxx\n+975 x xxx xxx\n+976 \n+977 xxxx xxxx\n+977 98 xxxx xxxx\n+98 xxx xxx xxxx\n+992 xxx xxx xxx\n+993 xxxx xxxx\n+994 xx xxx xxxx\n+994 xxx xxxxx\n+995 xx xxx xxx\n+996 xxx xxx xxx\n+998 xx xxx xxxx\n"


# instance fields
.field private mAllowOpenEntries:Z

.field private mContactsFile:Ljava/io/File;

.field private mMinimizeResults:Z

.field private mOpenEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 441
    const-string v0, "AAAAAAACEEEEIIIIDNOOOOO OUUUUYDsaaaaaaaceeeeiiiidnooooo ouuuuydy"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mLatin1Letters:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/voicedialer/RecognizerEngine;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mMinimizeResults:Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    .line 92
    return-void
.end method

.method private static addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "uri"
    .parameter "literal"
    .parameter "phoneType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1288
    .local p0, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sentence"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1292
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/voicedialer/CommandRecognizerEngine;->addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V

    .line 1293
    return-void
.end method

.method private static addClassName(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "label"
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, openEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x20

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, component:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, labelLowerCase:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    .local v1, classList:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 424
    invoke-virtual {p0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 429
    .local v3, index:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v3, v5

    .line 430
    .local v0, after:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    if-eqz v3, :cond_2

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_0

    .line 434
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addNameEntriesToGrammar(Ljava/util/List;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/voicedialer/VoiceContact;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 198
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    const-string v1, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNameEntriesToGrammar "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v11, entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v20, sb:Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 203
    .local v13, nContactIdx:I
    const/16 v17, 0x0

    .line 204
    .local v17, nReallyInsert:I
    const/16 v14, 0x5dc

    .line 205
    .local v14, nContactLimit:I
    const/16 v16, 0x3e8

    .line 206
    .local v16, nMustAdd:I
    const/4 v8, 0x0

    .line 207
    .local v8, bNeedCutOff:Z
    const/16 v19, 0x0

    .local v19, nRest:I
    const/4 v15, 0x0

    .local v15, nMultiple:I
    const/16 v18, 0x0

    .line 208
    .local v18, nRemainder:I
    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v7, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 209
    .local v7, Rm:Ljava/util/Random;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_0

    .line 211
    const/4 v8, 0x1

    .line 212
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit16 v0, v1, -0x3e8

    move/from16 v19, v0

    .line 214
    move/from16 v0, v19

    rem-int/lit16 v1, v0, 0x1f4

    if-nez v1, :cond_1

    .line 216
    move/from16 v0, v19

    div-int/lit16 v15, v0, 0x1f4

    .line 222
    :goto_0
    invoke-virtual {v7, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    .line 223
    const-string v1, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nRest="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", nMultiple="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", nRemainder="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    if-eqz p1, :cond_6

    .line 229
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/voicedialer/VoiceContact;

    .line 232
    .local v9, contact:Lcom/android/voicedialer/VoiceContact;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 219
    .end local v9           #contact:Lcom/android/voicedialer/VoiceContact;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_1
    move/from16 v0, v19

    div-int/lit16 v1, v0, 0x1f4

    add-int/lit8 v15, v1, 0x1

    goto :goto_0

    .line 233
    .restart local v9       #contact:Lcom/android/voicedialer/VoiceContact;
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v1, v9, Lcom/android/voicedialer/VoiceContact;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/voicedialer/CommandRecognizerEngine;->scrubName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 237
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 238
    goto :goto_1

    .line 240
    :cond_4
    if-eqz v8, :cond_5

    const/16 v1, 0x3e8

    if-le v13, v1, :cond_5

    .line 244
    rem-int v1, v13, v15

    move/from16 v0, v18

    if-eq v1, v0, :cond_5

    .line 247
    add-int/lit8 v13, v13, 0x1

    .line 248
    goto :goto_1

    .line 253
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 254
    const-string v1, "V=\'"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    iget-wide v1, v9, Lcom/android/voicedialer/VoiceContact;->mContactId:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    iget-wide v1, v9, Lcom/android/voicedialer/VoiceContact;->mPrimaryId:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    iget-wide v1, v9, Lcom/android/voicedialer/VoiceContact;->mHomeId:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 258
    iget-wide v1, v9, Lcom/android/voicedialer/VoiceContact;->mMobileId:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    iget-wide v1, v9, Lcom/android/voicedialer/VoiceContact;->mWorkId:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    iget-wide v1, v9, Lcom/android/voicedialer/VoiceContact;->mOtherId:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 261
    const-string v1, "\'"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    const-string v2, "@Names"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/speech/srec/Recognizer$Grammar;->addWordToSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    add-int/lit8 v17, v17, 0x1

    .line 273
    add-int/lit8 v13, v13, 0x1

    .line 274
    goto/16 :goto_1

    .line 267
    :catch_0
    move-exception v10

    .line 268
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load all contacts to voice recognizer, loaded "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    .end local v3           #name:Ljava/lang/String;
    .end local v9           #contact:Lcom/android/voicedialer/VoiceContact;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v1, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final inset num="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method private addOpenEntriesToGrammar()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->loadOpenEntriesTable()V

    .line 381
    const/4 v11, 0x0

    .line 382
    .local v11, nAdded:I
    iget-object v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 383
    .local v2, label:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 386
    .local v8, entry:Ljava/lang/String;
    const/4 v6, 0x0

    .line 387
    .local v6, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/16 v0, 0x20

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 388
    :cond_2
    const/4 v0, 0x5

    if-gt v6, v0, :cond_0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    const-string v1, "@Opens"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "V=\'"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "\'"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/speech/srec/Recognizer$Grammar;->addWordToSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 401
    :catch_0
    move-exception v7

    .line 403
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "RecognizerEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load all OpenEntries to voice recognizer, loaded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    .end local v2           #label:Ljava/lang/String;
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #entry:Ljava/lang/String;
    .end local v9           #i:I
    :cond_3
    return-void
.end method

.method private static deleteAllG2GFiles(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 515
    new-instance v1, Lcom/android/voicedialer/CommandRecognizerEngine$1;

    invoke-direct {v1}, Lcom/android/voicedialer/CommandRecognizerEngine$1;-><init>()V

    .line 521
    .local v1, ff:Ljava/io/FileFilter;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 522
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 523
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 524
    .local v2, file:Ljava/io/File;
    const-string v6, "RecognizerEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteAllG2GFiles "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 523
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 528
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void
.end method

.method public static deleteCachedGrammarFiles(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 536
    invoke-static {p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->deleteAllG2GFiles(Landroid/content/Context;)V

    .line 537
    const-string v1, "openentries.txt"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 538
    .local v0, oe:Ljava/io/File;
    const-string v1, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCachedGrammarFiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 540
    :cond_0
    return-void
.end method

.method private static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 987
    const/4 v0, 0x0

    .line 989
    .local v0, fmt:Ljava/lang/String;
    const-string v1, "+1 xxx xxx xxxx\n+20 x xxx xxxx\n+20 1x xxx xxxx\n+20 xx xxx xxxx\n+20 xxx xxx xxxx\n+212 xxxx xxxx\n+213 xx xx xx xx\n+213 xx xxx xxxx\n+216 xx xxx xxx\n+218 xx xxx xxx\n+22x \n+23x \n+24x \n+25x \n+26x \n+27 xx xxx xxxx\n+290 x xxx\n+291 x xxx xxx\n+297 xxx xxxx\n+298 xxx xxx\n+299 xxx xxx\n+30 xxx xxx xxxx\n+31 6 xxxx xxxx\n+31 xx xxx xxxx\n+31 xxx xx xxxx\n+32 2 xxx xx xx\n+32 3 xxx xx xx\n+32 4xx xx xx xx\n+32 9 xxx xx xx\n+32 xx xx xx xx\n+33 xxx xxx xxx\n+34 xxx xxx xxx\n+351 3xx xxx xxx\n+351 7xx xxx xxx\n+351 8xx xxx xxx\n+351 xx xxx xxxx\n+352 xx xxxx\n+352 6x1 xxx xxx\n+352 \n+353 xxx xxxx\n+353 xxxx xxxx\n+353 xx xxx xxxx\n+354 3xx xxx xxx\n+354 xxx xxxx\n+355 6x xxx xxxx\n+355 xxx xxxx\n+356 xx xx xx xx\n+357 xx xx xx xx\n+358 \n+359 \n+36 1 xxx xxxx\n+36 20 xxx xxxx\n+36 21 xxx xxxx\n+36 30 xxx xxxx\n+36 70 xxx xxxx\n+36 71 xxx xxxx\n+36 xx xxx xxx\n+370 6x xxx xxx\n+370 xxx xx xxx\n+371 xxxx xxxx\n+372 5 xxx xxxx\n+372 xxx xxxx\n+373 6xx xx xxx\n+373 7xx xx xxx\n+373 xxx xxxxx\n+374 xx xxx xxx\n+375 xx xxx xxxx\n+376 xx xx xx\n+377 xxxx xxxx\n+378 xxx xxx xxxx\n+380 xxx xx xx xx\n+381 xx xxx xxxx\n+382 xx xxx xxxx\n+385 xx xxx xxxx\n+386 x xxx xxxx\n+387 xx xx xx xx\n+389 2 xxx xx xx\n+389 xx xx xx xx\n+39 xxx xxx xxx\n+39 3xx xxx xxxx\n+39 xx xxxx xxxx\n+40 xxx xxx xxx\n+41 xx xxx xx xx\n+420 xxx xxx xxx\n+421 xxx xxx xxx\n+421 xxx xxx xxxx\n+43 \n+44 xxx xxx xxxx\n+45 xx xx xx xx\n+46 \n+47 xxxx xxxx\n+48 xx xxx xxxx\n+49 1xx xxxx xxx\n+49 1xx xxxx xxxx\n+49 \n+50x \n+51 9xx xxx xxx\n+51 1 xxx xxxx\n+51 xx xx xxxx\n+52 1 xxx xxx xxxx\n+52 xxx xxx xxxx\n+53 xxxx xxxx\n+54 9 11 xxxx xxxx\n+54 9 xxx xxx xxxx\n+54 11 xxxx xxxx\n+54 xxx xxx xxxx\n+55 xx xxxx xxxx\n+56 2 xxxxxx\n+56 9 xxxx xxxx\n+56 xx xxxxxx\n+56 xx xxxxxxx\n+57 x xxx xxxx\n+57 3xx xxx xxxx\n+58 xxx xxx xxxx\n+59x \n+60 3 xxxx xxxx\n+60 8x xxxxxx\n+60 x xxx xxxx\n+60 14 x xxx xxxx\n+60 1x xxx xxxx\n+60 x xxxx xxxx\n+60 \n+61 4xx xxx xxx\n+61 x xxxx xxxx\n+62 8xx xxxx xxxx\n+62 21 xxxxx\n+62 xx xxxxxx\n+62 xx xxx xxxx\n+62 xx xxxx xxxx\n+63 2 xxx xxxx\n+63 xx xxx xxxx\n+63 9xx xxx xxxx\n+64 2 xxx xxxx\n+64 2 xxx xxxx x\n+64 2 xxx xxxx xx\n+64 x xxx xxxx\n+65 xxxx xxxx\n+66 8 xxxx xxxx\n+66 2 xxx xxxx\n+66 xx xx xxxx\n+67x \n+68x \n+690 x xxx\n+691 xxx xxxx\n+692 xxx xxxx\n+7 6xx xx xxxxx\n+7 7xx 2 xxxxxx\n+7 7xx xx xxxxx\n+7 xxx xxx xx xx\n+81 3 xxxx xxxx\n+81 6 xxxx xxxx\n+81 xx xxx xxxx\n+81 x0 xxxx xxxx\n+82 2 xxx xxxx\n+82 2 xxxx xxxx\n+82 xx xxxx xxxx\n+82 xx xxx xxxx\n+84 4 xxxx xxxx\n+84 xx xxxx xxx\n+84 xx xxxx xxxx\n+850 \n+852 xxxx xxxx\n+853 xxxx xxxx\n+855 1x xxx xxx\n+855 9x xxx xxx\n+855 xx xx xx xx\n+856 20 x xxx xxx\n+856 xx xxx xxx\n+852 xxxx xxxx\n+86 10 xxxx xxxx\n+86 2x xxxx xxxx\n+86 xxx xxx xxxx\n+86 xxx xxxx xxxx\n+880 xx xxxx xxxx\n+886 \n+90 xxx xxx xxxx\n+91 9x xx xxxxxx\n+91 xx xxxx xxxx\n+92 xx xxx xxxx\n+92 3xx xxx xxxx\n+93 70 xxx xxx\n+93 xx xxx xxxx\n+94 xx xxx xxxx\n+95 1 xxx xxx\n+95 2 xxx xxx\n+95 xx xxxxx\n+95 9 xxx xxxx\n+960 xxx xxxx\n+961 x xxx xxx\n+961 xx xxx xxx\n+962 7 xxxx xxxx\n+962 x xxx xxxx\n+963 11 xxx xxxx\n+963 xx xxx xxx\n+964 \n+965 xxxx xxxx\n+966 5x xxx xxxx\n+966 x xxx xxxx\n+967 7xx xxx xxx\n+967 x xxx xxx\n+968 xxxx xxxx\n+970 5x xxx xxxx\n+970 x xxx xxxx\n+971 5x xxx xxxx\n+971 x xxx xxxx\n+972 5x xxx xxxx\n+972 x xxx xxxx\n+973 xxxx xxxx\n+974 xxx xxxx\n+975 1x xxx xxx\n+975 x xxx xxx\n+976 \n+977 xxxx xxxx\n+977 98 xxxx xxxx\n+98 xxx xxx xxxx\n+992 xxx xxx xxx\n+993 xxxx xxxx\n+994 xx xxx xxxx\n+994 xxx xxxxx\n+995 xx xxx xxx\n+996 xxx xxx xxx\n+998 xx xxx xxxx\n"

    invoke-static {v1, p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 995
    :goto_0
    return-object v1

    .line 992
    :cond_0
    const-string v1, "xxx xxx xxxx\nxxx xxxx\nx11\n"

    invoke-static {v1, p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 993
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 995
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "formats"
    .parameter "number"

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    .line 937
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 938
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 939
    .local v5, nlen:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 940
    .local v2, formatslen:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 943
    .local v6, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, f:I
    :cond_0
    if-ge v0, v2, :cond_4

    .line 944
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 945
    const/4 v3, 0x0

    .line 949
    .local v3, n:I
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 950
    .local v1, fch:C
    if-ne v1, v8, :cond_2

    if-lt v3, v5, :cond_2

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 977
    .end local v1           #fch:C
    .end local v3           #n:I
    :goto_1
    return-object v7

    .line 951
    .restart local v1       #fch:C
    .restart local v3       #n:I
    :cond_2
    if-eq v1, v8, :cond_3

    if-lt v3, v5, :cond_5

    .line 973
    :cond_3
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 974
    if-nez v0, :cond_0

    .line 977
    .end local v1           #fch:C
    .end local v3           #n:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 952
    .restart local v1       #fch:C
    .restart local v3       #n:I
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 954
    .local v4, nch:C
    if-eq v1, v4, :cond_6

    const/16 v7, 0x78

    if-ne v1, v7, :cond_7

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 955
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 956
    add-int/lit8 v3, v3, 0x1

    .line 957
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 960
    :cond_7
    if-ne v1, v9, :cond_3

    .line 961
    add-int/lit8 v0, v0, 0x1

    .line 962
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 964
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_1

    .line 965
    invoke-virtual {v6, p1, v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private loadOpenEntriesTable()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const-string v23, "RecognizerEngine"

    const-string v24, "loadOpenEntriesTable"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const-string v24, "openentries.txt"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 290
    .local v14, oe:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_7

    .line 291
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 295
    .local v17, pm:Landroid/content/pm/PackageManager;
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "android.intent.category.VOICE_LAUNCH"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 299
    .local v19, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v23

    if-eqz v23, :cond_0

    new-instance v23, Ljava/lang/InterruptedException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/InterruptedException;-><init>()V

    throw v23

    .line 300
    :cond_0
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    .line 307
    .local v20, voiceDialerClassName:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 308
    .local v18, ri:Landroid/content/pm/ResolveInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v23

    if-eqz v23, :cond_2

    new-instance v23, Ljava/lang/InterruptedException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/InterruptedException;-><init>()V

    throw v23

    .line 311
    :cond_2
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 314
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/voicedialer/CommandRecognizerEngine;->scrubName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 315
    .local v11, label:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v11, v1, v2}, Lcom/android/voicedialer/CommandRecognizerEngine;->addClassName(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v23, " "

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 323
    .local v22, words:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 324
    move-object/from16 v4, v22

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v13, :cond_1

    aget-object v21, v4, v9

    .line 325
    .local v21, word:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 327
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v12

    .line 328
    .local v12, len:I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-gt v12, v0, :cond_4

    .line 324
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 329
    :cond_4
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v12, v0, :cond_5

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v23

    if-eqz v23, :cond_3

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 331
    :cond_5
    const-string v23, "and"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_3

    const-string v23, "the"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/voicedialer/CommandRecognizerEngine;->addClassName(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 341
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #label:Ljava/lang/String;
    .end local v12           #len:I
    .end local v13           #len$:I
    .end local v18           #ri:Landroid/content/pm/ResolveInfo;
    .end local v21           #word:Ljava/lang/String;
    .end local v22           #words:[Ljava/lang/String;
    :cond_6
    const-string v23, "RecognizerEngine"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "addOpenEntriesToGrammar writing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v16, Ljava/io/ObjectOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 346
    .local v16, oos:Ljava/io/ObjectOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 347
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 374
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v16           #oos:Ljava/io/ObjectOutputStream;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20           #voiceDialerClassName:Ljava/lang/String;
    :goto_2
    return-void

    .line 349
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v17       #pm:Landroid/content/pm/PackageManager;
    .restart local v19       #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v20       #voiceDialerClassName:Ljava/lang/String;
    :catchall_0
    move-exception v23

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    throw v23
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    .end local v7           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 352
    .local v10, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/voicedialer/CommandRecognizerEngine;->deleteCachedGrammarFiles(Landroid/content/Context;)V

    .line 353
    throw v10

    .line 361
    .end local v10           #ioe:Ljava/io/IOException;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20           #voiceDialerClassName:Ljava/lang/String;
    :cond_7
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 363
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v15, Ljava/io/ObjectInputStream;

    invoke-direct {v15, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 364
    .local v15, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/HashMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    .line 365
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 367
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 369
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v15           #ois:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v5

    .line 370
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/voicedialer/CommandRecognizerEngine;->deleteCachedGrammarFiles(Landroid/content/Context;)V

    .line 371
    new-instance v23, Ljava/io/IOException;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 367
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v23

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw v23
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private static scrubName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "name"

    .prologue
    const/16 v5, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 454
    const-string v4, "&"

    const-string v6, " and "

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 457
    const-string v4, "@"

    const-string v6, " at "

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 461
    :goto_0
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 462
    .local v1, i:I
    if-ne v1, v7, :cond_4

    .line 469
    :cond_0
    const/4 v3, 0x0

    .line 470
    .local v3, nm:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 471
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 472
    .local v0, ch:C
    if-lt v0, v5, :cond_1

    const/16 v4, 0x7e

    if-ge v4, v0, :cond_3

    .line 473
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 474
    :cond_2
    const/16 v4, 0xc0

    if-gt v4, v0, :cond_5

    sget-object v4, Lcom/android/voicedialer/CommandRecognizerEngine;->mLatin1Letters:[C

    array-length v4, v4

    add-int/lit16 v4, v4, 0xc0

    if-ge v0, v4, :cond_5

    sget-object v4, Lcom/android/voicedialer/CommandRecognizerEngine;->mLatin1Letters:[C

    add-int/lit16 v6, v0, -0xc0

    aget-char v4, v4, v6

    :goto_2
    aput-char v4, v3, v1

    .line 470
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 463
    .end local v0           #ch:C
    .end local v3           #nm:[C
    :cond_4
    const/16 v4, 0x29

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 464
    .local v2, j:I
    if-eq v2, v7, :cond_0

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 466
    goto :goto_0

    .end local v2           #j:I
    .restart local v0       #ch:C
    .restart local v3       #nm:[C
    :cond_5
    move v4, v5

    .line 474
    goto :goto_2

    .line 478
    .end local v0           #ch:C
    :cond_6
    if-eqz v3, :cond_7

    .line 479
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    .line 484
    .restart local p0
    :cond_7
    :goto_3
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 485
    if-eq v1, v7, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_a

    .line 492
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 495
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 496
    :goto_4
    if-gez v1, :cond_b

    const-string p0, ""

    .line 503
    .end local p0
    :cond_9
    return-object p0

    .line 488
    .restart local p0
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 489
    goto :goto_3

    .line 497
    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 498
    .restart local v0       #ch:C
    const/16 v4, 0x61

    if-gt v4, v0, :cond_c

    const/16 v4, 0x7a

    if-le v0, v4, :cond_9

    :cond_c
    const/16 v4, 0x41

    if-gt v4, v0, :cond_d

    const/16 v4, 0x5a

    if-le v0, v4, :cond_9

    :cond_d
    const/16 v4, 0x30

    if-gt v4, v0, :cond_e

    const/16 v4, 0x39

    if-le v0, v4, :cond_9

    .line 495
    :cond_e
    add-int/lit8 v1, v1, -0x1

    goto :goto_4
.end method


# virtual methods
.method protected onRecognitionSuccess(Lcom/android/voicedialer/RecognizerClient;)V
    .locals 57
    .parameter "recognizerClient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1007
    const-string v53, "RecognizerEngine"

    const-string v54, "onRecognitionSuccess"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v53, v0

    if-eqz v53, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/android/voicedialer/RecognizerLogger;->logNbestHeader()V

    .line 1011
    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v22, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/16 v16, 0x0

    .line 1014
    .local v16, highestConfidence:I
    const/4 v15, 0x5

    .line 1015
    .local v15, examineLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mMinimizeResults:Z

    move/from16 v53, v0

    if-eqz v53, :cond_1

    .line 1016
    const/4 v15, 0x1

    .line 1018
    :cond_1
    const/16 v41, 0x0

    .line 1019
    .local v41, result:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/speech/srec/Recognizer;->getResultCount()I

    move-result v53

    move/from16 v0, v41

    move/from16 v1, v53

    if-ge v0, v1, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v53

    move/from16 v0, v53

    if-ge v0, v15, :cond_4

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    move-object/from16 v53, v0

    const-string v54, "conf"

    move-object/from16 v0, v53

    move/from16 v1, v41

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1023
    .local v9, conf:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    move-object/from16 v53, v0

    const-string v54, "literal"

    move-object/from16 v0, v53

    move/from16 v1, v41

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1024
    .local v25, literal:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    move-object/from16 v53, v0

    const-string v54, "meaning"

    move-object/from16 v0, v53

    move/from16 v1, v41

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1025
    .local v45, semantic:Ljava/lang/String;
    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "conf="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " lit="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " sem="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1026
    .local v29, msg:Ljava/lang/String;
    const-string v53, "RecognizerEngine"

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1028
    .local v10, confInt:I
    move/from16 v0, v16

    if-ge v0, v10, :cond_2

    move/from16 v16, v10

    .line 1029
    :cond_2
    const/16 v53, 0x64

    move/from16 v0, v53

    if-lt v10, v0, :cond_3

    mul-int/lit8 v53, v10, 0x2

    move/from16 v0, v53

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 1030
    :cond_3
    const-string v53, "RecognizerEngine"

    const-string v54, "confidence too low, dropping"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    .end local v9           #conf:Ljava/lang/String;
    .end local v10           #confInt:I
    .end local v25           #literal:Ljava/lang/String;
    .end local v29           #msg:Ljava/lang/String;
    .end local v45           #semantic:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v53, v0

    if-eqz v53, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/RecognizerLogger;->logIntents(Ljava/util/ArrayList;)V

    .line 1273
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v53

    if-eqz v53, :cond_27

    new-instance v53, Ljava/lang/InterruptedException;

    invoke-direct/range {v53 .. v53}, Ljava/lang/InterruptedException;-><init>()V

    throw v53

    .line 1033
    .restart local v9       #conf:Ljava/lang/String;
    .restart local v10       #confInt:I
    .restart local v25       #literal:Ljava/lang/String;
    .restart local v29       #msg:Ljava/lang/String;
    .restart local v45       #semantic:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v53, v0

    if-eqz v53, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/RecognizerLogger;->logLine(Ljava/lang/String;)V

    .line 1034
    :cond_7
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v53

    const-string v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1039
    .local v6, commands:[Ljava/lang/String;
    const-string v53, "DIAL"

    const/16 v54, 0x0

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_9

    .line 1040
    const-string v53, "tel"

    const/16 v54, 0x1

    aget-object v54, v6, v54

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v49

    .line 1041
    .local v49, uri:Landroid/net/Uri;
    const/16 v53, 0x1

    aget-object v53, v6, v53

    invoke-static/range {v53 .. v53}, Lcom/android/voicedialer/CommandRecognizerEngine;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1042
    .local v30, num:Ljava/lang/String;
    if-eqz v30, :cond_8

    .line 1043
    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, " "

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v54

    const/16 v55, 0x0

    aget-object v54, v54, v55

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const-string v54, ""

    const/16 v55, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1019
    .end local v30           #num:Ljava/lang/String;
    .end local v49           #uri:Landroid/net/Uri;
    :cond_8
    :goto_1
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_0

    .line 1049
    :cond_9
    const-string v53, "CALL"

    const/16 v54, 0x0

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1d

    array-length v0, v6

    move/from16 v53, v0

    const/16 v54, 0x7

    move/from16 v0, v53

    move/from16 v1, v54

    if-lt v0, v1, :cond_1d

    .line 1051
    const/16 v53, 0x1

    aget-object v53, v6, v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1052
    .local v11, contactId:J
    const/16 v53, 0x2

    aget-object v53, v6, v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v35

    .line 1053
    .local v35, phoneId:J
    const/16 v53, 0x3

    aget-object v53, v6, v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 1054
    .local v17, homeId:J
    const/16 v53, 0x4

    aget-object v53, v6, v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 1055
    .local v27, mobileId:J
    const/16 v53, 0x5

    aget-object v53, v6, v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v51

    .line 1056
    .local v51, workId:J
    const/16 v53, 0x6

    aget-object v53, v6, v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 1057
    .local v32, otherId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    .line 1059
    .local v40, res:Landroid/content/res/Resources;
    const/4 v13, 0x0

    .line 1066
    .local v13, count:I
    array-length v0, v6

    move/from16 v53, v0

    const/16 v54, 0x8

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_11

    .line 1067
    const-string v53, "H"

    const/16 v54, 0x7

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_d

    move-wide/from16 v46, v17

    .line 1073
    .local v46, spokenPhoneId:J
    :goto_2
    const-wide/16 v53, -0x1

    cmp-long v53, v46, v53

    if-eqz v53, :cond_a

    .line 1074
    sget-object v53, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v53

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v53

    const/16 v54, 0x7

    aget-object v54, v6, v54

    const/16 v55, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v25

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1077
    add-int/lit8 v13, v13, 0x1

    .line 1109
    .end local v46           #spokenPhoneId:J
    :cond_a
    :goto_3
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mMinimizeResults:Z

    move/from16 v53, v0

    if-nez v53, :cond_1c

    .line 1115
    :cond_b
    move-object/from16 v24, v25

    .line 1116
    .local v24, lit:Ljava/lang/String;
    array-length v0, v6

    move/from16 v53, v0

    const/16 v54, 0x8

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_18

    .line 1117
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v53

    const-string v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v50

    .line 1118
    .local v50, words:[Ljava/lang/String;
    new-instance v44, Ljava/lang/StringBuffer;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuffer;-><init>()V

    .line 1119
    .local v44, sb:Ljava/lang/StringBuffer;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_4
    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v53, v0

    add-int/lit8 v53, v53, -0x2

    move/from16 v0, v19

    move/from16 v1, v53

    if-ge v0, v1, :cond_17

    .line 1120
    if-eqz v19, :cond_c

    .line 1121
    const/16 v53, 0x20

    move-object/from16 v0, v44

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1123
    :cond_c
    aget-object v53, v50, v19

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1119
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1067
    .end local v19           #i:I
    .end local v24           #lit:Ljava/lang/String;
    .end local v44           #sb:Ljava/lang/StringBuffer;
    .end local v50           #words:[Ljava/lang/String;
    :cond_d
    const-string v53, "M"

    const/16 v54, 0x7

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_e

    move-wide/from16 v46, v27

    goto :goto_2

    :cond_e
    const-string v53, "W"

    const/16 v54, 0x7

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_f

    move-wide/from16 v46, v51

    goto/16 :goto_2

    :cond_f
    const-string v53, "O"

    const/16 v54, 0x7

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_10

    move-wide/from16 v46, v32

    goto/16 :goto_2

    :cond_10
    const-wide/16 v46, -0x1

    goto/16 :goto_2

    .line 1082
    :cond_11
    array-length v0, v6

    move/from16 v53, v0

    const/16 v54, 0x7

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_a

    .line 1083
    const/16 v38, 0x0

    .line 1084
    .local v38, phoneType:Ljava/lang/String;
    const/16 v37, 0x0

    .line 1085
    .local v37, phoneIdMsg:Ljava/lang/CharSequence;
    const-wide/16 v53, -0x1

    cmp-long v53, v35, v53

    if-nez v53, :cond_13

    .line 1086
    const/16 v38, 0x0

    .line 1087
    const/16 v37, 0x0

    .line 1101
    :cond_12
    :goto_5
    if-eqz v37, :cond_a

    .line 1102
    sget-object v53, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v53

    move-wide/from16 v1, v35

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    const/16 v55, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v38

    move/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1105
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1088
    :cond_13
    cmp-long v53, v35, v17

    if-nez v53, :cond_14

    .line 1089
    const-string v38, "H"

    .line 1090
    const v53, 0x7f04000c

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v37

    goto :goto_5

    .line 1091
    :cond_14
    cmp-long v53, v35, v27

    if-nez v53, :cond_15

    .line 1092
    const-string v38, "M"

    .line 1093
    const v53, 0x7f04000d

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v37

    goto :goto_5

    .line 1094
    :cond_15
    cmp-long v53, v35, v51

    if-nez v53, :cond_16

    .line 1095
    const-string v38, "W"

    .line 1096
    const v53, 0x7f04000e

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v37

    goto :goto_5

    .line 1097
    :cond_16
    cmp-long v53, v35, v32

    if-nez v53, :cond_12

    .line 1098
    const-string v38, "O"

    .line 1099
    const v53, 0x7f04000f

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v37

    goto :goto_5

    .line 1125
    .end local v37           #phoneIdMsg:Ljava/lang/CharSequence;
    .end local v38           #phoneType:Ljava/lang/String;
    .restart local v19       #i:I
    .restart local v24       #lit:Ljava/lang/String;
    .restart local v44       #sb:Ljava/lang/StringBuffer;
    .restart local v50       #words:[Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1129
    .end local v19           #i:I
    .end local v44           #sb:Ljava/lang/StringBuffer;
    .end local v50           #words:[Ljava/lang/String;
    :cond_18
    const-wide/16 v53, -0x1

    cmp-long v53, v17, v53

    if-eqz v53, :cond_19

    .line 1130
    sget-object v53, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v53

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const v55, 0x7f04000c

    move-object/from16 v0, v40

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    const-string v55, "H"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    move/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1133
    add-int/lit8 v13, v13, 0x1

    .line 1137
    :cond_19
    const-wide/16 v53, -0x1

    cmp-long v53, v27, v53

    if-eqz v53, :cond_1a

    .line 1138
    sget-object v53, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v53

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const v55, 0x7f04000d

    move-object/from16 v0, v40

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    const-string v55, "M"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    move/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1141
    add-int/lit8 v13, v13, 0x1

    .line 1145
    :cond_1a
    const-wide/16 v53, -0x1

    cmp-long v53, v51, v53

    if-eqz v53, :cond_1b

    .line 1146
    sget-object v53, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v53

    move-wide/from16 v1, v51

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const v55, 0x7f04000e

    move-object/from16 v0, v40

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    const-string v55, "W"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    move/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1149
    add-int/lit8 v13, v13, 0x1

    .line 1153
    :cond_1b
    const-wide/16 v53, -0x1

    cmp-long v53, v32, v53

    if-eqz v53, :cond_1c

    .line 1154
    sget-object v53, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v53

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const v55, 0x7f04000f

    move-object/from16 v0, v40

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    const-string v55, "O"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    move/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1157
    add-int/lit8 v13, v13, 0x1

    .line 1166
    .end local v24           #lit:Ljava/lang/String;
    :cond_1c
    if-nez v13, :cond_8

    const-wide/16 v53, -0x1

    cmp-long v53, v11, v53

    if-eqz v53, :cond_8

    goto/16 :goto_1

    .line 1181
    .end local v11           #contactId:J
    .end local v13           #count:I
    .end local v17           #homeId:J
    .end local v27           #mobileId:J
    .end local v32           #otherId:J
    .end local v35           #phoneId:J
    .end local v40           #res:Landroid/content/res/Resources;
    .end local v51           #workId:J
    :cond_1d
    const-string v53, "X"

    const/16 v54, 0x0

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1e

    .line 1182
    new-instance v21, Landroid/content/Intent;

    const-string v53, "com.android.voicedialer.ACTION_RECOGNIZER_RESULT"

    const/16 v54, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1183
    .local v21, intent:Landroid/content/Intent;
    const-string v53, "sentence"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    const-string v53, "semantic"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/voicedialer/CommandRecognizerEngine;->addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1189
    .end local v21           #intent:Landroid/content/Intent;
    :cond_1e
    const-string v53, "voicemail"

    const/16 v54, 0x0

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1f

    array-length v0, v6

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_1f

    .line 1190
    const-string v53, "voicemail"

    const-string v54, "x"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    const-string v54, ""

    const/high16 v55, 0x80

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v25

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1195
    :cond_1f
    const-string v53, "redial"

    const/16 v54, 0x0

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_20

    array-length v0, v6

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_20

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/voicedialer/VoiceContact;->redialNumber(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v31

    .line 1197
    .local v31, number:Ljava/lang/String;
    if-eqz v31, :cond_8

    .line 1198
    const-string v53, "tel"

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    const-string v54, ""

    const/high16 v55, 0x80

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v25

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1204
    .end local v31           #number:Ljava/lang/String;
    :cond_20
    const-string v53, "Intent"

    const/16 v54, 0x0

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_22

    .line 1205
    const/16 v19, 0x1

    .restart local v19       #i:I
    :goto_6
    array-length v0, v6

    move/from16 v53, v0

    move/from16 v0, v19

    move/from16 v1, v53

    if-ge v0, v1, :cond_8

    .line 1207
    :try_start_0
    aget-object v53, v6, v19

    invoke-static/range {v53 .. v53}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 1208
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v53, "sentence"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    if-nez v53, :cond_21

    .line 1209
    const-string v53, "sentence"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    :cond_21
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/voicedialer/CommandRecognizerEngine;->addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    .end local v21           #intent:Landroid/content/Intent;
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 1212
    :catch_0
    move-exception v14

    .line 1214
    .local v14, e:Ljava/net/URISyntaxException;
    const-string v53, "RecognizerEngine"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "onRecognitionSuccess: poorly formed URI in grammar"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1222
    .end local v14           #e:Ljava/net/URISyntaxException;
    .end local v19           #i:I
    :cond_22
    const-string v53, "OPEN"

    const/16 v54, 0x0

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    move/from16 v53, v0

    if-eqz v53, :cond_26

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v39

    .line 1224
    .local v39, pm:Landroid/content/pm/PackageManager;
    array-length v0, v6

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-le v0, v1, :cond_23

    const/16 v53, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v54, v0

    if-eqz v54, :cond_24

    const/16 v54, 0x1

    :goto_9
    and-int v53, v53, v54

    if-eqz v53, :cond_8

    .line 1231
    const/16 v53, 0x1

    aget-object v48, v6, v53

    .line 1232
    .local v48, str_param:Ljava/lang/String;
    if-eqz v48, :cond_8

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v53, v0

    const/16 v54, 0x1

    aget-object v54, v6, v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1235
    .local v26, meaning:Ljava/lang/String;
    if-eqz v26, :cond_8

    .line 1237
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v53

    const-string v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1238
    .local v8, components:[Ljava/lang/String;
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_a
    array-length v0, v8

    move/from16 v53, v0

    move/from16 v0, v19

    move/from16 v1, v53

    if-ge v0, v1, :cond_8

    .line 1239
    aget-object v7, v8, v19

    .line 1240
    .local v7, component:Ljava/lang/String;
    new-instance v21, Landroid/content/Intent;

    const-string v53, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v53, "android.intent.category.VOICE_LAUNCH"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    const/16 v53, 0x0

    const/16 v54, 0x2f

    move/from16 v0, v54

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v54

    move/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 1244
    .local v34, packageName:Ljava/lang/String;
    const/16 v53, 0x2f

    move/from16 v0, v53

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v53

    add-int/lit8 v53, v53, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v54

    move/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1246
    .local v5, className:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    const/16 v53, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v43

    .line 1248
    .local v43, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_25

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/pm/ResolveInfo;

    .line 1249
    .local v42, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1250
    .local v23, label:Ljava/lang/String;
    new-instance v21, Landroid/content/Intent;

    .end local v21           #intent:Landroid/content/Intent;
    const-string v53, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1251
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v53, "android.intent.category.VOICE_LAUNCH"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    const-string v53, "sentence"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, " "

    move-object/from16 v0, v25

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    const/16 v56, 0x0

    aget-object v55, v55, v56

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, " "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1254
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/voicedialer/CommandRecognizerEngine;->addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V

    goto :goto_b

    .line 1224
    .end local v5           #className:Ljava/lang/String;
    .end local v7           #component:Ljava/lang/String;
    .end local v8           #components:[Ljava/lang/String;
    .end local v19           #i:I
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #intent:Landroid/content/Intent;
    .end local v23           #label:Ljava/lang/String;
    .end local v26           #meaning:Ljava/lang/String;
    .end local v34           #packageName:Ljava/lang/String;
    .end local v42           #ri:Landroid/content/pm/ResolveInfo;
    .end local v43           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v48           #str_param:Ljava/lang/String;
    :cond_23
    const/16 v53, 0x0

    goto/16 :goto_8

    :cond_24
    const/16 v54, 0x0

    goto/16 :goto_9

    .line 1238
    .restart local v5       #className:Ljava/lang/String;
    .restart local v7       #component:Ljava/lang/String;
    .restart local v8       #components:[Ljava/lang/String;
    .restart local v19       #i:I
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v21       #intent:Landroid/content/Intent;
    .restart local v26       #meaning:Ljava/lang/String;
    .restart local v34       #packageName:Ljava/lang/String;
    .restart local v43       #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v48       #str_param:Ljava/lang/String;
    :cond_25
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_a

    .line 1265
    .end local v5           #className:Ljava/lang/String;
    .end local v7           #component:Ljava/lang/String;
    .end local v8           #components:[Ljava/lang/String;
    .end local v19           #i:I
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #intent:Landroid/content/Intent;
    .end local v26           #meaning:Ljava/lang/String;
    .end local v34           #packageName:Ljava/lang/String;
    .end local v39           #pm:Landroid/content/pm/PackageManager;
    .end local v43           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v48           #str_param:Ljava/lang/String;
    :cond_26
    const-string v53, "RecognizerEngine"

    const-string v54, "onRecognitionSuccess: parse error"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1275
    .end local v6           #commands:[Ljava/lang/String;
    .end local v9           #conf:Ljava/lang/String;
    .end local v10           #confInt:I
    .end local v25           #literal:Ljava/lang/String;
    .end local v29           #msg:Ljava/lang/String;
    .end local v45           #semantic:Ljava/lang/String;
    :cond_27
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v53

    if-nez v53, :cond_28

    .line 1277
    const-string v53, "No Intents generated"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionFailure(Ljava/lang/String;)V

    .line 1283
    :goto_c
    return-void

    .line 1280
    :cond_28
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v53

    move/from16 v0, v53

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v53, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v53

    check-cast v53, [Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionSuccess([Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public setAllowOpenEntries(Z)V
    .locals 2
    .parameter "allowOpenEntries"

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    if-eq v0, p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v0}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 115
    iput-object v1, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 116
    iput-object v1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    .line 119
    :cond_0
    iput-boolean p1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    .line 120
    return-void
.end method

.method public setContactsFile(Ljava/io/File;)V
    .locals 2
    .parameter "contactsFile"

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    if-eq p1, v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    .line 98
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v0}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 100
    iput-object v1, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 101
    iput-object v1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    .line 104
    :cond_0
    return-void
.end method

.method public setMinimizeResults(Z)V
    .locals 0
    .parameter "minimizeResults"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mMinimizeResults:Z

    .line 108
    return-void
.end method

.method protected setupGrammar()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v2, "RecognizerEngine"

    const-string v3, "start getVoiceContacts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v3, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contactsFile is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    if-nez v2, :cond_5

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    invoke-static {v2}, Lcom/android/voicedialer/VoiceContact;->getVoiceContactsFromFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    :goto_1
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v2, v0}, Lcom/android/voicedialer/RecognizerLogger;->logContacts(Ljava/util/List;)V

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voicedialer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".g2g"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 138
    .local v1, g2g:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 139
    const-string v2, "RecognizerEngine"

    const-string v3, "g2g file is not existed, create one out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/voicedialer/CommandRecognizerEngine;->deleteAllG2GFiles(Landroid/content/Context;)V

    .line 142
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 144
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 148
    :cond_1
    const-string v2, "RecognizerEngine"

    const-string v3, "start new Grammar"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v2, Landroid/speech/srec/Recognizer$Grammar;

    iget-object v3, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/voicedialer/RecognizerEngine;->SREC_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/grammars/VoiceDialer.g2g"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/speech/srec/Recognizer$Grammar;-><init>(Landroid/speech/srec/Recognizer;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 150
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->setupRecognizer()V

    .line 153
    const-string v2, "RecognizerEngine"

    const-string v3, "start grammar.resetAllSlots"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->resetAllSlots()V

    .line 155
    const-string v2, "RecognizerEngine"

    const-string v3, "end grammar.resetAllSlots"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    if-eqz v2, :cond_2

    .line 159
    const-string v2, "RecognizerEngine"

    const-string v3, "start add openentries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->addOpenEntriesToGrammar()V

    .line 161
    const-string v2, "RecognizerEngine"

    const-string v3, "end add openentries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    const-string v2, "RecognizerEngine"

    const-string v3, "start add name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, v0}, Lcom/android/voicedialer/CommandRecognizerEngine;->addNameEntriesToGrammar(Ljava/util/List;)V

    .line 167
    const-string v2, "RecognizerEngine"

    const-string v3, "end add name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v2, "RecognizerEngine"

    const-string v3, "start grammar.compile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->compile()V

    .line 172
    const-string v2, "RecognizerEngine"

    const-string v3, "end grammar.compile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v2, "RecognizerEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start grammar.save "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 176
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/srec/Recognizer$Grammar;->save(Ljava/lang/String;)V

    .line 185
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    if-eqz v2, :cond_4

    .line 187
    invoke-direct {p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->loadOpenEntriesTable()V

    .line 190
    :cond_4
    return-void

    .line 125
    .end local v0           #contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    .end local v1           #g2g:Ljava/io/File;
    :cond_5
    const-string v2, "not null"

    goto/16 :goto_0

    .line 127
    :cond_6
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/voicedialer/VoiceContact;->getVoiceContacts(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 180
    .restart local v0       #contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    .restart local v1       #g2g:Ljava/io/File;
    :cond_7
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-nez v2, :cond_3

    .line 181
    const-string v2, "RecognizerEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g2g file existed, start new Grammar loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v2, Landroid/speech/srec/Recognizer$Grammar;

    iget-object v3, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/speech/srec/Recognizer$Grammar;-><init>(Landroid/speech/srec/Recognizer;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 183
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->setupRecognizer()V

    goto :goto_2
.end method
