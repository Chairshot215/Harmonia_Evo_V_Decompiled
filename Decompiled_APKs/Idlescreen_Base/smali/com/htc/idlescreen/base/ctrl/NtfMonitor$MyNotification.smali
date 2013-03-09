.class public Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
.super Ljava/lang/Object;
.source "NtfMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/NtfMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyNotification"
.end annotation


# static fields
.field public static final MISSED_CALL:I = 0x1

.field public static final SOCIAL_NETWORK:I = 0x5

.field public static final UNREAD_MAIL:I = 0x4

.field public static final UNREAD_MESSAGE:I = 0x3

.field public static final VOICE_MAIL:I = 0x2

.field public static final VVM:I = 0x6


# instance fields
.field public mId:I

.field public mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

.field public mPackageName:Ljava/lang/String;

.field public mType:I

.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/ctrl/NtfMonitor;Ljava/lang/String;IILcom/htc/lockscreen/ntf/HtcLSNotification;)V
    .locals 1
    .parameter
    .parameter "packageName"
    .parameter "id"
    .parameter "type"
    .parameter "ntf"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    .line 72
    iput-object p2, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mPackageName:Ljava/lang/String;

    .line 73
    iput p3, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mId:I

    .line 74
    iput p4, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    .line 75
    iput-object p5, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    .line 76
    return-void
.end method

.method private parserNumber(Ljava/lang/String;)I
    .locals 8
    .parameter "content"

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 147
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v5, number:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 149
    .local v0, chars:[C
    const/4 v3, 0x0

    .line 150
    .local v3, findFirst:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_2

    .line 151
    aget-char v6, v0, v4

    const/16 v7, 0x30

    if-lt v6, v7, :cond_1

    aget-char v6, v0, v4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_1

    .line 152
    aget-char v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    const/4 v3, 0x1

    .line 150
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_1
    if-eqz v3, :cond_0

    .line 160
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    .end local v0           #chars:[C
    .end local v3           #findFirst:Z
    .end local v4           #i:I
    .end local v5           #number:Ljava/lang/StringBuffer;
    :cond_3
    :goto_1
    return v1

    .line 162
    .restart local v0       #chars:[C
    .restart local v3       #findFirst:Z
    .restart local v4       #i:I
    .restart local v5       #number:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 163
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "NtfMonitor"

    const-string v7, "parserNumber fail"

    invoke-static {v6, v7, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sendBtnIntent(I)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v4, p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getButton(I)Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    move-result-object v0

    .line 127
    .local v0, btn:Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v3

    .line 130
    :cond_1
    invoke-virtual {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 131
    .local v2, intent:Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 135
    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v3, 0x1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;)Z
    .locals 2
    .parameter "myNtf"

    .prologue
    .line 87
    iget-object v0, p1, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mId:I

    iget v1, p1, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mId:I

    if-ne v0, v1, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContent()[Ljava/lang/String;
    .locals 13

    .prologue
    .line 171
    iget v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 172
    const-string v9, ""

    .line 173
    .local v9, title:Ljava/lang/String;
    const-string v0, ""

    .line 174
    .local v0, content:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v3, from:Ljava/lang/StringBuffer;
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->parserNumber(Ljava/lang/String;)I

    move-result v6

    .line 177
    .local v6, missCount:I
    const/4 v10, 0x1

    if-le v6, v10, :cond_1

    .line 178
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v10, v10, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v11, 0x7f040051

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 179
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v10, v10, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v11, 0x7f040056

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v11, v11, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v12, 0x7f040057

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :goto_0
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getFrom()Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, phonenumber:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v11, v11, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v7, v10, v11}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    .line 191
    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, location:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 196
    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_0
    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const/4 v10, 0x3

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, ""

    aput-object v11, v4, v10

    .line 264
    .end local v0           #content:Ljava/lang/String;
    .end local v3           #from:Ljava/lang/StringBuffer;
    .end local v5           #location:Ljava/lang/String;
    .end local v6           #missCount:I
    .end local v7           #phonenumber:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 186
    .restart local v0       #content:Ljava/lang/String;
    .restart local v3       #from:Ljava/lang/StringBuffer;
    .restart local v6       #missCount:I
    .restart local v9       #title:Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v10, v10, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v11, 0x7f040050

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    move-object v0, v9

    goto :goto_0

    .line 215
    .end local v0           #content:Ljava/lang/String;
    .end local v3           #from:Ljava/lang/StringBuffer;
    .end local v6           #missCount:I
    .end local v9           #title:Ljava/lang/String;
    :cond_2
    iget v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 216
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 217
    .restart local v9       #title:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 218
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v10, v10, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v11, 0x7f040052

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 220
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v0, content:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getDate()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, date:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 223
    const-string v10, "("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v11, v11, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v12, 0x7f040057

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :cond_4
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, from:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 231
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v10, v10, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v11, 0x7f04002b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    :cond_5
    iget v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mId:I

    const/16 v11, 0x323

    if-ne v10, v11, :cond_6

    .line 235
    move-object v8, v9

    .line 236
    .local v8, temp:Ljava/lang/String;
    move-object v9, v3

    .line 237
    move-object v3, v8

    .line 239
    .end local v8           #temp:Ljava/lang/String;
    :cond_6
    const/4 v10, 0x3

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x1

    aput-object v9, v4, v10

    const/4 v10, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    .line 240
    .local v4, infos:[Ljava/lang/String;
    goto/16 :goto_1

    .line 242
    .end local v0           #content:Ljava/lang/StringBuffer;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #from:Ljava/lang/String;
    .end local v4           #infos:[Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_7
    iget v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 244
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v10, v10, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v11, 0x7f040054

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 245
    .restart local v9       #title:Ljava/lang/String;
    const/4 v10, 0x3

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v11}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getDescript()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getDate()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    .line 246
    .restart local v4       #infos:[Ljava/lang/String;
    goto/16 :goto_1

    .line 248
    .end local v4           #infos:[Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_8
    iget v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_a

    .line 249
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 250
    .restart local v9       #title:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->parserNumber(Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, count:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    .local v3, from:Ljava/lang/StringBuffer;
    const/4 v10, 0x1

    if-le v1, v10, :cond_9

    .line 253
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v10, v10, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v11, 0x7f040056

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v11, v11, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v12, 0x7f040057

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :cond_9
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getFrom()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    const/4 v10, 0x3

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, ""

    aput-object v11, v4, v10

    .line 262
    .restart local v4       #infos:[Ljava/lang/String;
    goto/16 :goto_1

    .line 264
    .end local v1           #count:I
    .end local v3           #from:Ljava/lang/StringBuffer;
    .end local v4           #infos:[Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public getDate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 288
    const-string v1, ""

    .line 289
    .local v1, dateStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v4}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getWhen()J

    move-result-wide v2

    .line 290
    .local v2, when:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 291
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 292
    .local v0, date:Ljava/util/Date;
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v4, v4, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    :goto_0
    return-object v1

    .line 292
    .restart local v0       #date:Ljava/util/Date;
    :cond_1
    const-string v4, "MM/dd/yyyy"

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDesp()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 269
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getDescript()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, desp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, date:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, ret:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 275
    .end local v3           #ret:Ljava/lang/String;
    :cond_0
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, tmp:[Ljava/lang/String;
    const-string v2, ""

    .line 278
    .local v2, outStr:Ljava/lang/String;
    array-length v5, v4

    if-le v5, v7, :cond_1

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    :goto_1
    move-object v3, v2

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 281
    .end local v3           #ret:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIcon()I

    move-result v0

    .line 80
    .local v0, resId:I
    if-lez v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isSupportDrop()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getDropPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendLeftBtnIntent()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->sendBtnIntent(I)Z

    move-result v0

    return v0
.end method

.method public sendPendingIntent()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getDropPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 104
    .local v1, intent:Landroid/app/PendingIntent;
    if-nez v1, :cond_0

    .line 114
    :goto_0
    return v2

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v2, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendRightBtnIntent()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->sendBtnIntent(I)Z

    move-result v0

    return v0
.end method
