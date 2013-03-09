.class public Lcom/htc/android/mail/util/ParseMachine;
.super Ljava/lang/Object;
.source "ParseMachine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParseMachine"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isImgLinkExistInHtml(Ljava/io/Reader;)Z
    .locals 8
    .parameter "reader"

    .prologue
    const/16 v7, 0x74

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    const/4 v1, 0x0

    .line 56
    .local v1, mileStone:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    .local v2, readerChar:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    .line 59
    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_1

    .line 60
    const/4 v1, 0x0

    .line 61
    goto :goto_0

    .line 65
    :cond_1
    if-nez v1, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_2

    .line 66
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x69

    if-ne v5, v6, :cond_0

    .line 67
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x67

    if-ne v5, v6, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 70
    goto :goto_0

    .line 83
    :cond_2
    if-ne v1, v3, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x73

    if-ne v5, v6, :cond_3

    .line 84
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x72

    if-ne v5, v6, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x63

    if-ne v5, v6, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_0

    .line 87
    const/4 v1, 0x2

    .line 88
    goto :goto_0

    .line 101
    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x68

    if-ne v5, v6, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 104
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v6, 0x70

    if-ne v5, v6, :cond_0

    .line 105
    const/4 v1, 0x3

    .line 106
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "ParseMachine"

    const-string v6, "find ImgLink!!"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 133
    .end local v2           #readerChar:I
    :goto_1
    return v3

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ParseMachine"

    const-string v5, "isImgLinkExistInHtml Reader IO Exception"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :try_start_3
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v3, v4

    .line 123
    goto :goto_1

    .line 125
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 126
    :try_start_4
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 125
    :goto_3
    throw v3

    .line 126
    .restart local v2       #readerChar:I
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_4
    move v3, v4

    .line 133
    goto :goto_1

    .line 127
    .end local v2           #readerChar:I
    :catch_1
    move-exception v0

    .line 128
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "ParseMachine"

    const-string v5, "isImgLinkExistInHtml Reader IO Exception"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 127
    :catch_2
    move-exception v0

    .line 128
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "ParseMachine"

    const-string v5, "isImgLinkExistInHtml Reader IO Exception"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #readerChar:I
    :catch_3
    move-exception v0

    .line 128
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "ParseMachine"

    const-string v5, "isImgLinkExistInHtml Reader IO Exception"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 128
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "ParseMachine"

    const-string v5, "isImgLinkExistInHtml Reader IO Exception"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static isImgLinkExistInHtml(Ljava/lang/String;)Z
    .locals 1
    .parameter "htmlContent"

    .prologue
    .line 47
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/htc/android/mail/util/ParseMachine;->isImgLinkExistInHtml(Ljava/io/Reader;)Z

    move-result v0

    return v0
.end method

.method public static parseHuxPwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pwd"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
