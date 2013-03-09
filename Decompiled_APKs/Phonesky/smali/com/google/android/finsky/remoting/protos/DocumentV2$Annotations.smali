.class public final Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotations"
.end annotation


# instance fields
.field private badgeForCreator_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation
.end field

.field private badgeForDoc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasLink:Z

.field private hasOfferNote:Z

.field private hasPlusOneData:Z

.field private hasPrivacyPolicyUrl:Z

.field private hasReason:Z

.field private hasSectionBodyOfWork:Z

.field private hasSectionCoreContent:Z

.field private hasSectionCrossSell:Z

.field private hasSectionMoreBy:Z

.field private hasSectionRelated:Z

.field private hasSectionRelatedDocType:Z

.field private hasTemplate:Z

.field private link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

.field private offerNote_:Ljava/lang/String;

.field private plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

.field private privacyPolicyUrl_:Ljava/lang/String;

.field private promotedDoc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;",
            ">;"
        }
    .end annotation
.end field

.field private reason_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

.field private sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private subscription_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation
.end field

.field private template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

.field private warning_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 816
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 821
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 841
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 861
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 881
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 901
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 921
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 941
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    .line 994
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    .line 1014
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    .line 1033
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    .line 1066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    .line 1099
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    .line 1133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->offerNote_:Ljava/lang/String;

    .line 1149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    .line 1183
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->reason_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    .line 1203
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->privacyPolicyUrl_:Ljava/lang/String;

    .line 1314
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->cachedSize:I

    .line 816
    return-void
.end method


# virtual methods
.method public addBadgeForCreator(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 1050
    if-nez p1, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    return-object p0
.end method

.method public addBadgeForDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 1083
    if-nez p1, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    return-object p0
.end method

.method public addPromotedDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 1116
    if-nez p1, :cond_0

    .line 1117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    return-object p0
.end method

.method public addSubscription(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 1166
    if-nez p1, :cond_0

    .line 1167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    return-object p0
.end method

.method public addWarning(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 977
    if-nez p1, :cond_0

    .line 978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    return-object p0
.end method

.method public getBadgeForCreator(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .locals 1
    .parameter "index"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    return-object v0
.end method

.method public getBadgeForCreatorCount()I
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBadgeForCreatorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForCreator_:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeForDoc(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .locals 1
    .parameter "index"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    return-object v0
.end method

.method public getBadgeForDocCount()I
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBadgeForDocList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->badgeForDoc_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1317
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->cachedSize:I

    if-gez v0, :cond_0

    .line 1319
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSerializedSize()I

    .line 1321
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->cachedSize:I

    return v0
.end method

.method public getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    return-object v0
.end method

.method public getOfferNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->offerNote_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    return-object v0
.end method

.method public getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->privacyPolicyUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotedDocList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->promotedDoc_:Ljava/util/List;

    return-object v0
.end method

.method public getReason()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->reason_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    return-object v0
.end method

.method public getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1326
    const/4 v2, 0x0

    .line 1327
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1328
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1331
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1332
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1335
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPlusOneData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1336
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1339
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getWarningList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    .line 1340
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1343
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1344
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1347
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1348
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1351
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1352
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1355
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForCreatorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 1356
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 1359
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForDocList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 1360
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 1363
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasLink()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1364
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1367
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1368
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1371
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1372
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1375
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPromotedDocList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    .line 1376
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    const/16 v3, 0xd

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    .line 1379
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasOfferNote()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1380
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getOfferNote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1383
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSubscriptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 1384
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/16 v3, 0x10

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4

    .line 1387
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1388
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getReason()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1391
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1392
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1395
    :cond_10
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->cachedSize:I

    .line 1396
    return v2
.end method

.method public getSubscriptionCount()I
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubscriptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->subscription_:Ljava/util/List;

    return-object v0
.end method

.method public getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    return-object v0
.end method

.method public getWarning(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    .locals 1
    .parameter "index"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    return-object v0
.end method

.method public getWarningCount()I
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWarningList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->warning_:Ljava/util/List;

    return-object v0
.end method

.method public hasLink()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasLink:Z

    return v0
.end method

.method public hasOfferNote()Z
    .locals 1

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasOfferNote:Z

    return v0
.end method

.method public hasPlusOneData()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPlusOneData:Z

    return v0
.end method

.method public hasPrivacyPolicyUrl()Z
    .locals 1

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason:Z

    return v0
.end method

.method public hasSectionBodyOfWork()Z
    .locals 1

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork:Z

    return v0
.end method

.method public hasSectionCoreContent()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent:Z

    return v0
.end method

.method public hasSectionCrossSell()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell:Z

    return v0
.end method

.method public hasSectionMoreBy()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy:Z

    return v0
.end method

.method public hasSectionRelated()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated:Z

    return v0
.end method

.method public hasSectionRelatedDocType()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType:Z

    return v0
.end method

.method public hasTemplate()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1404
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1405
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1409
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1410
    :sswitch_0
    return-object p0

    .line 1415
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1416
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1417
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionRelated(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1421
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1422
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1423
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionMoreBy(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1427
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;-><init>()V

    .line 1428
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1429
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1433
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;-><init>()V

    .line 1434
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1435
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addWarning(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1439
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1440
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1441
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionBodyOfWork(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1445
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1446
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1447
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionCoreContent(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1451
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;-><init>()V

    .line 1452
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1453
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setTemplate(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1457
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;-><init>()V

    .line 1458
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1459
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addBadgeForCreator(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1463
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;-><init>()V

    .line 1464
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1465
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addBadgeForDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto :goto_0

    .line 1469
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;-><init>()V

    .line 1470
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1471
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setLink(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1475
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1476
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1477
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionCrossSell(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1481
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1482
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1483
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setSectionRelatedDocType(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1487
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;-><init>()V

    .line 1488
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1489
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addPromotedDoc(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1493
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setOfferNote(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1497
    :sswitch_f
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 1498
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1499
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->addSubscription(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1503
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :sswitch_10
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;-><init>()V

    .line 1504
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1505
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setReason(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1509
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->setPrivacyPolicyUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    goto/16 :goto_0

    .line 1405
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
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
    .line 813
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    return-object v0
.end method

.method public setLink(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 998
    if-nez p1, :cond_0

    .line 999
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1001
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasLink:Z

    .line 1002
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->link_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    .line 1003
    return-object p0
.end method

.method public setOfferNote(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 1137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasOfferNote:Z

    .line 1138
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->offerNote_:Ljava/lang/String;

    .line 1139
    return-object p0
.end method

.method public setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 945
    if-nez p1, :cond_0

    .line 946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 948
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPlusOneData:Z

    .line 949
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 950
    return-object p0
.end method

.method public setPrivacyPolicyUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 1207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl:Z

    .line 1208
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->privacyPolicyUrl_:Ljava/lang/String;

    .line 1209
    return-object p0
.end method

.method public setReason(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 1187
    if-nez p1, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1190
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason:Z

    .line 1191
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->reason_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    .line 1192
    return-object p0
.end method

.method public setSectionBodyOfWork(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 885
    if-nez p1, :cond_0

    .line 886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 888
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork:Z

    .line 889
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionBodyOfWork_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 890
    return-object p0
.end method

.method public setSectionCoreContent(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 905
    if-nez p1, :cond_0

    .line 906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 908
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent:Z

    .line 909
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCoreContent_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 910
    return-object p0
.end method

.method public setSectionCrossSell(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 925
    if-nez p1, :cond_0

    .line 926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 928
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell:Z

    .line 929
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionCrossSell_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 930
    return-object p0
.end method

.method public setSectionMoreBy(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 865
    if-nez p1, :cond_0

    .line 866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 868
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy:Z

    .line 869
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionMoreBy_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 870
    return-object p0
.end method

.method public setSectionRelated(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 825
    if-nez p1, :cond_0

    .line 826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 828
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated:Z

    .line 829
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelated_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 830
    return-object p0
.end method

.method public setSectionRelatedDocType(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 845
    if-nez p1, :cond_0

    .line 846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 848
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType:Z

    .line 849
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->sectionRelatedDocType_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 850
    return-object p0
.end method

.method public setTemplate(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;)Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    .locals 1
    .parameter "value"

    .prologue
    .line 1018
    if-nez p1, :cond_0

    .line 1019
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1021
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate:Z

    .line 1022
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->template_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    .line 1023
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1262
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1264
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1265
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1267
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPlusOneData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1268
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1270
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getWarningList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    .line 1271
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1273
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1274
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1276
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1277
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1279
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1280
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1282
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForCreatorList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 1283
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1285
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForDocList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 1286
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 1288
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasLink()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1289
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1291
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1292
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1294
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1295
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1297
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPromotedDocList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    .line 1298
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 1300
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasOfferNote()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1301
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getOfferNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1303
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSubscriptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 1304
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_4

    .line 1306
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1307
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getReason()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1309
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1310
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1312
    :cond_10
    return-void
.end method
