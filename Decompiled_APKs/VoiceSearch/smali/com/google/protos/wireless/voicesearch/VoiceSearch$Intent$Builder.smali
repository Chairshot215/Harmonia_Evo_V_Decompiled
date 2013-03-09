.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Ljava/lang/Object;

.field private bitField0_:I

.field private category_:Lcom/google/protobuf/LazyStringList;

.field private componentName_:Ljava/lang/Object;

.field private dataType_:Ljava/lang/Object;

.field private data_:Ljava/lang/Object;

.field private extra_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;"
        }
    .end annotation
.end field

.field private flag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hdpiCountdownIconUrl_:Ljava/lang/Object;

.field private hdpiListItemIconUrl_:Ljava/lang/Object;

.field private mdpiCountdownIconUrl_:Ljava/lang/Object;

.field private mdpiListItemIconUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17642
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17966
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 18019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 18072
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 18137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 18226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 18271
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17643
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->maybeForceBuilderInitialization()V

    .line 17644
    return-void
.end method

.method static synthetic access$20000()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17637
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17649
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCategoryIsMutable()V
    .locals 2

    .prologue
    .line 18074
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 18075
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 18076
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18078
    :cond_0
    return-void
.end method

.method private ensureExtraIsMutable()V
    .locals 2

    .prologue
    .line 18140
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 18141
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 18142
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18144
    :cond_0
    return-void
.end method

.method private ensureFlagIsMutable()V
    .locals 2

    .prologue
    .line 18228
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 18229
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 18230
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18232
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 17647
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 2

    .prologue
    .line 17688
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    .line 17689
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17690
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 17692
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 5

    .prologue
    .line 17696
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 17697
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17698
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 17699
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 17700
    or-int/lit8 v2, v2, 0x1

    .line 17702
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17703
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 17704
    or-int/lit8 v2, v2, 0x2

    .line 17706
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17707
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 17708
    or-int/lit8 v2, v2, 0x4

    .line 17710
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17711
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 17712
    or-int/lit8 v2, v2, 0x8

    .line 17714
    :cond_3
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17715
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 17716
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 17718
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17720
    :cond_4
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 17721
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 17722
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 17723
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17725
    :cond_5
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/util/List;)Ljava/util/List;

    .line 17726
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 17727
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 17728
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17730
    :cond_6
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/util/List;)Ljava/util/List;

    .line 17731
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 17732
    or-int/lit8 v2, v2, 0x10

    .line 17734
    :cond_7
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17735
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 17736
    or-int/lit8 v2, v2, 0x20

    .line 17738
    :cond_8
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17739
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 17740
    or-int/lit8 v2, v2, 0x40

    .line 17742
    :cond_9
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17743
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 17744
    or-int/lit16 v2, v2, 0x80

    .line 17746
    :cond_a
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17747
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;I)I

    .line 17748
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 2

    .prologue
    .line 17680
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1

    .prologue
    .line 17684
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter "index"

    .prologue
    .line 18153
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object v0
.end method

.method public getExtraCount()I
    .locals 1

    .prologue
    .line 18150
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 17915
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 17827
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hasAction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 17837
    :cond_0
    :goto_0
    return v1

    .line 17831
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->getExtraCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 17832
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->getExtra(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17831
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17837
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17637
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17637
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17637
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17844
    const/4 v2, 0x0

    .line 17846
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17851
    if-eqz v2, :cond_0

    .line 17852
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    .line 17855
    :cond_0
    return-object p0

    .line 17847
    :catch_0
    move-exception v1

    .line 17848
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-object v2, v0

    .line 17849
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17851
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 17852
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 17752
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 17823
    :cond_0
    :goto_0
    return-object p0

    .line 17753
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasComponentName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17754
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17755
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17758
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17759
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17760
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17763
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17764
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17765
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 17768
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasDataType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17769
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17770
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 17773
    :cond_5
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17774
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 17775
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 17776
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17783
    :cond_6
    :goto_1
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17784
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17785
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 17786
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17793
    :cond_7
    :goto_2
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 17794
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17795
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 17796
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17803
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasHdpiCountdownIconUrl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17804
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17805
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17808
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasMdpiCountdownIconUrl()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17809
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17810
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17813
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasHdpiListItemIconUrl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17814
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17815
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17818
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasMdpiListItemIconUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17819
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17820
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17778
    :cond_c
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureCategoryIsMutable()V

    .line 17779
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 17788
    :cond_d
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 17789
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 17798
    :cond_e
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureFlagIsMutable()V

    .line 17799
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method
