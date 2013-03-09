.class public final Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentVariant"
.end annotation


# instance fields
.field private autoTranslation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private channelId_:J

.field private child_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private decoration_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private hasChannelId:Z

.field private hasRecentChanges:Z

.field private hasRule:Z

.field private hasTitle:Z

.field private hasVariationType:Z

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private offer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private recentChanges_:Ljava/lang/String;

.field private rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

.field private snippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;

.field private variationType_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 761
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->variationType_:I

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 798
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->title_:Ljava/lang/String;

    .line 814
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    .line 848
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->recentChanges_:Ljava/lang/String;

    .line 864
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    .line 897
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    .line 931
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->channelId_:J

    .line 947
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->child_:Ljava/util/List;

    .line 980
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->decoration_:Ljava/util/List;

    .line 1013
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->image_:Ljava/util/List;

    .line 1121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->cachedSize:I

    .line 748
    return-void
.end method


# virtual methods
.method public addAutoTranslation(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 881
    if-nez p1, :cond_0

    .line 882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    return-object p0
.end method

.method public addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 964
    if-nez p1, :cond_0

    .line 965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->child_:Ljava/util/List;

    .line 970
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    return-object p0
.end method

.method public addDecoration(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 997
    if-nez p1, :cond_0

    .line 998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->decoration_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->decoration_:Ljava/util/List;

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->decoration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    return-object p0
.end method

.method public addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 1030
    if-nez p1, :cond_0

    .line 1031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->image_:Ljava/util/List;

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    return-object p0
.end method

.method public addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 914
    if-nez p1, :cond_0

    .line 915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    return-object p0
.end method

.method public addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 831
    if-nez p1, :cond_0

    .line 832
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    return-object p0
.end method

.method public getAutoTranslationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->autoTranslation_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->cachedSize:I

    if-gez v0, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getSerializedSize()I

    .line 1128
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->cachedSize:I

    return v0
.end method

.method public getChannelId()J
    .locals 2

    .prologue
    .line 932
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->channelId_:J

    return-wide v0
.end method

.method public getChildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->child_:Ljava/util/List;

    return-object v0
.end method

.method public getDecorationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->decoration_:Ljava/util/List;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getOfferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->offer_:Ljava/util/List;

    return-object v0
.end method

.method public getRecentChanges()Ljava/lang/String;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->recentChanges_:Ljava/lang/String;

    return-object v0
.end method

.method public getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1133
    const/4 v3, 0x0

    .line 1134
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasVariationType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1135
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getVariationType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1138
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRule()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1139
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1142
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1143
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1147
    :cond_2
    const/4 v0, 0x0

    .line 1148
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1149
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1152
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 1153
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1155
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRecentChanges()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1156
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getRecentChanges()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1159
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getAutoTranslationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 1160
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/4 v4, 0x6

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 1163
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getOfferList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1164
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v4, 0x7

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 1167
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasChannelId()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1168
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getChannelId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1171
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getChildList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1172
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    .line 1175
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getDecorationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1176
    .restart local v1       #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_4

    .line 1179
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getImageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1180
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v4, 0xc

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_5

    .line 1183
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_a
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->cachedSize:I

    .line 1184
    return v3
.end method

.method public getSnippetList()Ljava/util/List;
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
    .line 817
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->snippet_:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getVariationType()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->variationType_:I

    return v0
.end method

.method public hasChannelId()Z
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasChannelId:Z

    return v0
.end method

.method public hasRecentChanges()Z
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRecentChanges:Z

    return v0
.end method

.method public hasRule()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRule:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasTitle:Z

    return v0
.end method

.method public hasVariationType()Z
    .locals 1

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasVariationType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1193
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1197
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1198
    :sswitch_0
    return-object p0

    .line 1203
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setVariationType(I)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1207
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;-><init>()V

    .line 1208
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1209
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1213
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1217
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1221
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setRecentChanges(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1225
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;-><init>()V

    .line 1226
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1227
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->addAutoTranslation(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1231
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 1232
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1233
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1237
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->setChannelId(J)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1241
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 1242
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1243
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1247
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 1248
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1249
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->addDecoration(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1253
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 1254
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1255
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    goto :goto_0

    .line 1193
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x48 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
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
    .line 745
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    move-result-object v0

    return-object v0
.end method

.method public setChannelId(J)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasChannelId:Z

    .line 936
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->channelId_:J

    .line 937
    return-object p0
.end method

.method public setRecentChanges(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRecentChanges:Z

    .line 853
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->recentChanges_:Ljava/lang/String;

    .line 854
    return-object p0
.end method

.method public setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 782
    if-nez p1, :cond_0

    .line 783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 785
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRule:Z

    .line 786
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 787
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasTitle:Z

    .line 803
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->title_:Ljava/lang/String;

    .line 804
    return-object p0
.end method

.method public setVariationType(I)Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasVariationType:Z

    .line 766
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->variationType_:I

    .line 767
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
    .line 1086
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasVariationType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1087
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getVariationType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRule()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1090
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1092
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1093
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1095
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getSnippetList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 1096
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1098
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasRecentChanges()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1099
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getRecentChanges()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1101
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getAutoTranslationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 1102
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1104
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getOfferList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1105
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 1107
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->hasChannelId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1108
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getChannelId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1110
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1111
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 1113
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getDecorationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1114
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_4

    .line 1116
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1117
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_5

    .line 1119
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_a
    return-void
.end method
