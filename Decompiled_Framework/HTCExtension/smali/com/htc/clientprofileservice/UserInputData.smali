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

    new-instance v0, Lcom/htc/clientprofileservice/UserInputData$1;

    invoke-direct {v0}, Lcom/htc/clientprofileservice/UserInputData$1;-><init>()V

    sput-object v0, Lcom/htc/clientprofileservice/UserInputData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    invoke-direct {p0, p1}, Lcom/htc/clientprofileservice/UserInputData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/clientprofileservice/UserInputData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    iget-boolean v0, p1, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    iget-boolean v0, p1, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    iget-boolean v0, p1, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    iput-boolean v1, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    :goto_2
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHttpEntity()Lorg/apache/http/HttpEntity;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v6, "userInputData"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "syncEnabledUserInfo"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v5, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "syncEnabledUserInfo"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "syncEnabled"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v5, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "syncEnabled"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "CmtUiEnabled"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v5, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "CmtUiEnabled"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "userInputData"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCmtUiEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    return v0
.end method

.method public isSyncEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    return v0
.end method

.method public isSyncEnabledUserInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    return v0
.end method

.method public setCmtUiEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    return-void
.end method

.method public setSyncEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    return-void
.end method

.method public setSyncEnabledUserInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabledUserInfo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->syncEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget-boolean v0, p0, Lcom/htc/clientprofileservice/UserInputData;->cmtUiEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_2
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2
.end method
