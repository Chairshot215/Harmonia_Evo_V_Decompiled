.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppDetails"
.end annotation


# instance fields
.field private appCategory_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appType_:Ljava/lang/String;

.field private cachedSize:I

.field private certificateHash_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentRating_:I

.field private developerEmail_:Ljava/lang/String;

.field private developerName_:Ljava/lang/String;

.field private developerWebsite_:Ljava/lang/String;

.field private file_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private hasAppType:Z

.field private hasContentRating:Z

.field private hasDeveloperEmail:Z

.field private hasDeveloperName:Z

.field private hasDeveloperWebsite:Z

.field private hasInstallationSize:Z

.field private hasMajorVersionNumber:Z

.field private hasNumDownloads:Z

.field private hasPackageName:Z

.field private hasRecentChangesHtml:Z

.field private hasTitle:Z

.field private hasUploadDate:Z

.field private hasVersionCode:Z

.field private hasVersionString:Z

.field private installationSize_:J

.field private majorVersionNumber_:I

.field private numDownloads_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private permission_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recentChangesHtml_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private uploadDate_:Ljava/lang/String;

.field private versionCode_:I

.field private versionString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 618
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 623
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerName_:Ljava/lang/String;

    .line 640
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->majorVersionNumber_:I

    .line 657
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionCode_:I

    .line 674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionString_:Ljava/lang/String;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->title_:Ljava/lang/String;

    .line 707
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    .line 741
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->contentRating_:I

    .line 758
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->installationSize_:J

    .line 774
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    .line 808
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerEmail_:Ljava/lang/String;

    .line 825
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerWebsite_:Ljava/lang/String;

    .line 842
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->numDownloads_:Ljava/lang/String;

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->packageName_:Ljava/lang/String;

    .line 876
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->recentChangesHtml_:Ljava/lang/String;

    .line 893
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->uploadDate_:Ljava/lang/String;

    .line 909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    .line 943
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appType_:Ljava/lang/String;

    .line 959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->certificateHash_:Ljava/util/List;

    .line 1076
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->cachedSize:I

    .line 618
    return-void
.end method


# virtual methods
.method public addAppCategory(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 724
    if-nez p1, :cond_0

    .line 725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    return-object p0
.end method

.method public addCertificateHash(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 977
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->certificateHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->certificateHash_:Ljava/util/List;

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->certificateHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    return-object p0
.end method

.method public addFile(Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 926
    if-nez p1, :cond_0

    .line 927
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    return-object p0
.end method

.method public addPermission(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 791
    if-nez p1, :cond_0

    .line 792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    return-object p0
.end method

.method public getAppCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appCategory_:Ljava/util/List;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appType_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getSerializedSize()I

    .line 1083
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->cachedSize:I

    return v0
.end method

.method public getCertificateHash(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->certificateHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateHashCount()I
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->certificateHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCertificateHashList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->certificateHash_:Ljava/util/List;

    return-object v0
.end method

.method public getContentRating()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->contentRating_:I

    return v0
.end method

.method public getDeveloperEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerWebsite_:Ljava/lang/String;

    return-object v0
.end method

.method public getFile(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .locals 1
    .parameter "index"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->file_:Ljava/util/List;

    return-object v0
.end method

.method public getInstallationSize()J
    .locals 2

    .prologue
    .line 759
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->installationSize_:J

    return-wide v0
.end method

.method public getMajorVersionNumber()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->majorVersionNumber_:I

    return v0
.end method

.method public getNumDownloads()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->numDownloads_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->permission_:Ljava/util/List;

    return-object v0
.end method

.method public getRecentChangesHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->recentChangesHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1088
    const/4 v3, 0x0

    .line 1089
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1090
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasMajorVersionNumber()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1094
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getMajorVersionNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1097
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1098
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1101
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1102
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1105
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1106
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1110
    :cond_4
    const/4 v0, 0x0

    .line 1111
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getAppCategoryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1112
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1115
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    .line 1116
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getAppCategoryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1118
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasContentRating()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1119
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getContentRating()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1122
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1123
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1127
    :cond_7
    const/4 v0, 0x0

    .line 1128
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1129
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1132
    .end local v1           #element:Ljava/lang/String;
    :cond_8
    add-int/2addr v3, v0

    .line 1133
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1136
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1139
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1140
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1143
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1144
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1147
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasPackageName()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1148
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1151
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasRecentChangesHtml()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1152
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getRecentChangesHtml()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1155
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1156
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1159
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getFileList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    .line 1160
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    const/16 v4, 0x11

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 1163
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasAppType()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1164
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getAppType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1168
    :cond_10
    const/4 v0, 0x0

    .line 1169
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getCertificateHashList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1170
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3

    .line 1173
    .end local v1           #element:Ljava/lang/String;
    :cond_11
    add-int/2addr v3, v0

    .line 1174
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getCertificateHashList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1176
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->cachedSize:I

    .line 1177
    return v3
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->uploadDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionCode_:I

    return v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionString_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasAppType:Z

    return v0
.end method

.method public hasContentRating()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasContentRating:Z

    return v0
.end method

.method public hasDeveloperEmail()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail:Z

    return v0
.end method

.method public hasDeveloperName()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperName:Z

    return v0
.end method

.method public hasDeveloperWebsite()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite:Z

    return v0
.end method

.method public hasInstallationSize()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    return v0
.end method

.method public hasMajorVersionNumber()Z
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasMajorVersionNumber:Z

    return v0
.end method

.method public hasNumDownloads()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads:Z

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasPackageName:Z

    return v0
.end method

.method public hasRecentChangesHtml()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasRecentChangesHtml:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasTitle:Z

    return v0
.end method

.method public hasUploadDate()Z
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode:Z

    return v0
.end method

.method public hasVersionString()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1185
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1186
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1190
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1191
    :sswitch_0
    return-object p0

    .line 1196
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setDeveloperName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1200
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setMajorVersionNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1204
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1208
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setVersionString(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1212
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1216
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->addAppCategory(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1220
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setContentRating(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1224
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setInstallationSize(J)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1228
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->addPermission(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1232
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setDeveloperEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1236
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setDeveloperWebsite(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1240
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setNumDownloads(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1244
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1248
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setRecentChangesHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto :goto_0

    .line 1252
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setUploadDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto/16 :goto_0

    .line 1256
    :sswitch_10
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;-><init>()V

    .line 1257
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1258
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->addFile(Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto/16 :goto_0

    .line 1262
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->setAppType(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto/16 :goto_0

    .line 1266
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->addCertificateHash(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    goto/16 :goto_0

    .line 1186
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
        0x9a -> :sswitch_12
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasAppType:Z

    .line 948
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->appType_:Ljava/lang/String;

    .line 949
    return-object p0
.end method

.method public setContentRating(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasContentRating:Z

    .line 746
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->contentRating_:I

    .line 747
    return-object p0
.end method

.method public setDeveloperEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail:Z

    .line 813
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerEmail_:Ljava/lang/String;

    .line 814
    return-object p0
.end method

.method public setDeveloperName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperName:Z

    .line 628
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerName_:Ljava/lang/String;

    .line 629
    return-object p0
.end method

.method public setDeveloperWebsite(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite:Z

    .line 830
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->developerWebsite_:Ljava/lang/String;

    .line 831
    return-object p0
.end method

.method public setInstallationSize(J)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    .line 763
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->installationSize_:J

    .line 764
    return-object p0
.end method

.method public setMajorVersionNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasMajorVersionNumber:Z

    .line 645
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->majorVersionNumber_:I

    .line 646
    return-object p0
.end method

.method public setNumDownloads(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads:Z

    .line 847
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->numDownloads_:Ljava/lang/String;

    .line 848
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasPackageName:Z

    .line 864
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->packageName_:Ljava/lang/String;

    .line 865
    return-object p0
.end method

.method public setRecentChangesHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasRecentChangesHtml:Z

    .line 881
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->recentChangesHtml_:Ljava/lang/String;

    .line 882
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasTitle:Z

    .line 696
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->title_:Ljava/lang/String;

    .line 697
    return-object p0
.end method

.method public setUploadDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate:Z

    .line 898
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->uploadDate_:Ljava/lang/String;

    .line 899
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode:Z

    .line 662
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionCode_:I

    .line 663
    return-object p0
.end method

.method public setVersionString(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString:Z

    .line 679
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->versionString_:Ljava/lang/String;

    .line 680
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1021
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasMajorVersionNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1024
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getMajorVersionNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1026
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1029
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1030
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1032
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1033
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1035
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getAppCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1036
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1038
    .end local v0           #element:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasContentRating()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1039
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getContentRating()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1041
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1042
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1044
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1045
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 1047
    .end local v0           #element:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1048
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1050
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1051
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1053
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1054
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1056
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasPackageName()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1057
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1059
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasRecentChangesHtml()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1060
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getRecentChangesHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1062
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1063
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1065
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getFileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    .line 1066
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 1068
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasAppType()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1069
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1071
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getCertificateHashList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1072
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_3

    .line 1074
    .end local v0           #element:Ljava/lang/String;
    :cond_11
    return-void
.end method
