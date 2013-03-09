.class public Lcom/google/android/gm/provider/SenderInstructions;
.super Ljava/lang/Object;
.source "SenderInstructions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/SenderInstructions$Sender;,
        Lcom/google/android/gm/provider/SenderInstructions$Visibility;
    }
.end annotation


# instance fields
.field private numDrafts:I

.field private numVisible:I

.field private seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private senders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/SenderInstructions$Sender;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private unreadAuthors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unreadSeen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->seen:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->unreadSeen:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->unreadAuthors:Ljava/util/Set;

    .line 45
    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->numVisible:I

    .line 46
    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->numDrafts:I

    return-void
.end method

.method private addNextSender()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 113
    iget v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    packed-switch v2, :pswitch_data_0

    .line 130
    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    add-int/lit8 v3, v3, -0x2

    sub-int v0, v2, v3

    .line 131
    .local v0, pos:I
    iget v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    .line 137
    .local v1, sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    iget-object v2, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v3, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->VISIBLE:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    if-eq v2, v3, :cond_2

    .line 138
    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->seen:Ljava/util/Set;

    iget-object v3, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->unread:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->unreadSeen:Ljava/util/Set;

    iget-object v3, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->seen:Ljava/util/Set;

    iget-object v3, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    iget-boolean v2, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->unread:Z

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->unreadSeen:Ljava/util/Set;

    iget-object v3, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    sget-object v2, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->VISIBLE:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v2, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 145
    iget v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->numVisible:I

    iput v2, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->priority:I

    .line 146
    iget v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->numVisible:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->numVisible:I

    .line 151
    :cond_2
    :goto_1
    return-void

    .line 115
    .end local v0           #pos:I
    .end local v1           #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    :pswitch_0
    const/4 v0, 0x0

    .line 116
    .restart local v0       #pos:I
    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    iget-boolean v2, v2, Lcom/google/android/gm/provider/SenderInstructions$Sender;->unread:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->unreadAuthors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    :goto_2
    iput v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    .line 121
    .end local v0           #pos:I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #pos:I
    :goto_3
    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 122
    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    iget-boolean v2, v2, Lcom/google/android/gm/provider/SenderInstructions$Sender;->unread:Z

    if-eqz v2, :cond_6

    .line 126
    :cond_5
    iput v3, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    goto :goto_0

    .line 121
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 148
    .restart local v1       #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    :cond_7
    sget-object v2, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->SKIPPED:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v2, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;ZZZ)V
    .locals 3
    .parameter "name"
    .parameter "draft"
    .parameter "unread"
    .parameter "sentByMe"

    .prologue
    .line 58
    if-eqz p2, :cond_1

    .line 59
    iget v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->numDrafts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->numDrafts:I

    .line 71
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local p1
    :cond_1
    new-instance v0, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    invoke-direct {v0}, Lcom/google/android/gm/provider/SenderInstructions$Sender;-><init>()V

    .line 62
    .local v0, sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    if-eqz p4, :cond_2

    const-string p1, ""

    .end local p1
    :cond_2
    iput-object p1, v0, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    .line 63
    iput-boolean p3, v0, Lcom/google/android/gm/provider/SenderInstructions$Sender;->unread:Z

    .line 64
    sget-object v1, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->HIDDEN:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v1, v0, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 65
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gm/provider/SenderInstructions$Sender;->priority:I

    .line 66
    iget-object v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-boolean v1, v0, Lcom/google/android/gm/provider/SenderInstructions$Sender;->unread:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->unreadAuthors:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected calculateVisibility(I)V
    .locals 4
    .parameter "maxVisibleSenders"

    .prologue
    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/SenderInstructions;->canAddMore()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->numVisible:I

    if-ge v2, p1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/google/android/gm/provider/SenderInstructions;->addNextSender()V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    .line 83
    .local v1, sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    iget-object v2, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v3, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->HIDDEN:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->seen:Ljava/util/Set;

    iget-object v3, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    sget-object v2, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->SKIPPED:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v2, v1, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    goto :goto_1

    .line 88
    .end local v1           #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    :cond_2
    return-void
.end method

.method public canAddMore()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    iget-object v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumDrafts()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->numDrafts:I

    return v0
.end method

.method public getNumVisible()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->numVisible:I

    return v0
.end method

.method public getSenders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/SenderInstructions$Sender;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->senders:Ljava/util/List;

    return-object v0
.end method
