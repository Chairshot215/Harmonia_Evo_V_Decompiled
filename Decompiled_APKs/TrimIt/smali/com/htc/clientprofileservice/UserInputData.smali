.class public Lcom/htc/clientprofileservice/UserInputData;
.super Ljava/lang/Object;
.source "UserInputData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BYTE_FALSE:B = 0x0t

.field private static final BYTE_TRUE:B = 0x1t

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/clientprofileservice/UserInputData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_CMTUIENABLED:Ljava/lang/String; = "CmtUiEnabled"

.field private static final TAG_ROOT:Ljava/lang/String; = "userInputData"

.field private static final TAG_SYNCENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final TAG_SYNCENABLEDUSERINFO:Ljava/lang/String; = "syncEnabledUserInfo"


# instance fields
.field private cmtUiEnabled:Z

.field private syncEnabled:Z

.field private syncEnabledUserInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/htc/clientprofileservice/UserInputData$1;

    invoke-direct {v0}, Lcom/htc/clientprofileservice/UserInputData$1;-><init>()V

    sput-object v0, Lcom/htc/clientprofileservice/UserInputData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    .line 20
    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    .line 20
    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    .line 33
    invoke-direct {p0, p1}, Lcom/htc/clientprofileservice/UserInputData;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/htc/clientprofileservice/UserInputData;)V
    .locals 1
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    .line 20
    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    .line 27
    iget-boolean v0, p1, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    .line 28
    iget-boolean v0, p1, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    .line 29
    iget-boolean v0, p1, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    .line 30
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    .line 134
    iput-boolean v1, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    .line 139
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    .line 140
    iput-boolean v1, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    .line 145
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    .line 146
    iput-boolean v1, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    .line 150
    :goto_2
    return-void

    .line 136
    :cond_0
    iput-boolean v2, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    goto :goto_0

    .line 142
    :cond_1
    iput-boolean v2, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    goto :goto_1

    .line 148
    :cond_2
    iput-boolean v2, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getHttpEntity()Lorg/apache/http/HttpEntity;
    .locals 7

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 70
    .local v1, entity:Lorg/apache/http/entity/ByteArrayEntity;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 71
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 73
    const/4 v5, 0x0

    const-string v6, "userInputData"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const/4 v5, 0x0

    const-string v6, "syncEnabledUserInfo"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget-boolean v5, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const/4 v5, 0x0

    const-string v6, "syncEnabledUserInfo"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const/4 v5, 0x0

    const-string v6, "syncEnabled"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget-boolean v5, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const/4 v5, 0x0

    const-string v6, "syncEnabled"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const/4 v5, 0x0

    const-string v6, "CmtUiEnabled"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-boolean v5, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const/4 v5, 0x0

    const-string v6, "CmtUiEnabled"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const/4 v5, 0x0

    const-string v6, "userInputData"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 85
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v1           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .local v2, entity:Lorg/apache/http/entity/ByteArrayEntity;
    move-object v1, v2

    .line 94
    .end local v2           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v3           #os:Ljava/io/ByteArrayOutputStream;
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v1       #entity:Lorg/apache/http/entity/ByteArrayEntity;
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCmtUiEnabled()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    return v0
.end method

.method public isSyncEnabled()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    return v0
.end method

.method public isSyncEnabledUserInfo()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    return v0
.end method

.method public setCmtUiEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    .line 46
    return-void
.end method

.method public setSyncEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    .line 42
    return-void
.end method

.method public setSyncEnabledUserInfo(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    :goto_0
    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    :goto_1
    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    :goto_2
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2
.end method
