.class public Lcom/google/android/gm/ConversationHeaderViewModel;
.super Ljava/lang/Object;
.source "ConversationHeaderViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    }
.end annotation


# static fields
.field static sConversationHeaderMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/ConversationHeaderViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checkboxVisible:Z

.field public conversationId:J

.field dateBackground:Landroid/graphics/Bitmap;

.field public dateMs:J

.field dateText:Ljava/lang/String;

.field faded:Z

.field fontColor:I

.field public fromSnippetInstructions:Ljava/lang/String;

.field hasAttachments:Z

.field hasDraftMessage:Z

.field labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

.field public labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field

.field private mDataHashCode:I

.field private mLayoutHashCode:I

.field public maxMessageId:J

.field paperclip:Landroid/graphics/Bitmap;

.field public personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

.field personalLevelBitmap:Landroid/graphics/Bitmap;

.field public rawLabels:Ljava/lang/String;

.field final senderFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;",
            ">;"
        }
    .end annotation
.end field

.field sendersDisplayLayout:Landroid/text/StaticLayout;

.field sendersDisplayText:Landroid/text/SpannableStringBuilder;

.field sendersText:Ljava/lang/String;

.field public snippet:Ljava/lang/String;

.field public standardScaledDimen:I

.field starBitmap:Landroid/graphics/Bitmap;

.field starred:Z

.field public subject:Ljava/lang/String;

.field subjectLayout:Landroid/text/StaticLayout;

.field subjectText:Landroid/text/SpannableStringBuilder;

.field public viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->faded:Z

    .line 197
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method static forConversationId(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationHeaderViewModel;
    .locals 6
    .parameter "account"
    .parameter "conversationId"
    .parameter "cursor"

    .prologue
    .line 132
    sget-object v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    monitor-enter v3

    .line 133
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/ConversationHeaderViewModel;->forConversationIdOrNull(Ljava/lang/String;J)Lcom/google/android/gm/ConversationHeaderViewModel;

    move-result-object v0

    .line 135
    .local v0, header:Lcom/google/android/gm/ConversationHeaderViewModel;
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .local v1, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Lcom/google/android/gm/ConversationHeaderViewModel;

    .end local v0           #header:Lcom/google/android/gm/ConversationHeaderViewModel;
    invoke-direct {v0}, Lcom/google/android/gm/ConversationHeaderViewModel;-><init>()V

    .line 138
    .restart local v0       #header:Lcom/google/android/gm/ConversationHeaderViewModel;
    sget-object v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v1           #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    if-eqz p3, :cond_1

    .line 142
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    .line 143
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getMaxServerMessageId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->maxMessageId:J

    .line 144
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->hasAttachments()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->hasAttachments:Z

    .line 145
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getHasDraftMessage()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->hasDraftMessage:Z

    .line 146
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getDateMs()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateMs:J

    .line 147
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getPersonalLevel()Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 148
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subject:Ljava/lang/String;

    .line 149
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSnippet()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->snippet:Ljava/lang/String;

    .line 150
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    .line 151
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getRawLabels()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->rawLabels:Ljava/lang/String;

    .line 152
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getFromSnippetInstructions()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->fromSnippetInstructions:Ljava/lang/String;

    .line 153
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->faded:Z

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->checkboxVisible:Z

    .line 156
    :cond_1
    iget-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    if-nez v2, :cond_2

    .line 157
    new-instance v2, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    invoke-direct {v2}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;-><init>()V

    iput-object v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    .line 159
    :cond_2
    monitor-exit v3

    return-object v0

    .line 160
    .end local v0           #header:Lcom/google/android/gm/ConversationHeaderViewModel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static forConversationIdOrNull(Ljava/lang/String;J)Lcom/google/android/gm/ConversationHeaderViewModel;
    .locals 3
    .parameter "account"
    .parameter "conversationId"

    .prologue
    .line 114
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .local v0, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    monitor-enter v2

    .line 116
    :try_start_0
    sget-object v1, Lcom/google/android/gm/ConversationHeaderViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationHeaderViewModel;

    monitor-exit v2

    return-object v1

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getHashCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "dateText"
    .parameter "rawLabels"
    .parameter "fromSnippetInstructions"

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 v0, -0x1

    .line 228
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method private getLayoutHashCode()I
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->mDataHashCode:I

    iget v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->viewWidth:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->standardScaledDimen:I

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->checkboxVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static updateConversationForLabelChange(Ljava/lang/String;JLcom/google/android/gm/provider/Label;Z)V
    .locals 3
    .parameter "account"
    .parameter "conversationId"
    .parameter "label"
    .parameter "add"

    .prologue
    .line 174
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/ConversationHeaderViewModel;->forConversationIdOrNull(Ljava/lang/String;J)Lcom/google/android/gm/ConversationHeaderViewModel;

    move-result-object v0

    .line 175
    .local v0, header:Lcom/google/android/gm/ConversationHeaderViewModel;
    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    .line 179
    .local v1, labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    if-eqz p4, :cond_1

    .line 180
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static updateConversationForLabelRemoval(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "conversationId"
    .parameter "canonicalName"

    .prologue
    .line 188
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/ConversationHeaderViewModel;->forConversationIdOrNull(Ljava/lang/String;J)Lcom/google/android/gm/ConversationHeaderViewModel;

    move-result-object v0

    .line 189
    .local v0, header:Lcom/google/android/gm/ConversationHeaderViewModel;
    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    .line 193
    .local v1, labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "style"
    .parameter "isFixed"

    .prologue
    .line 209
    new-instance v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;-><init>(IILjava/lang/CharSequence;Landroid/text/style/CharacterStyle;Z)V

    .line 210
    .local v0, senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method clearSenderFragments()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    return-void
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"

    .prologue
    .line 298
    const v0, 0x7f0c0158

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->subject:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->snippet:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isDataValid(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 251
    iget v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->mDataHashCode:I

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateText:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->rawLabels:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->fromSnippetInstructions:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gm/ConversationHeaderViewModel;->getHashCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLayoutValid(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationHeaderViewModel;->isDataValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->mLayoutHashCode:I

    invoke-direct {p0}, Lcom/google/android/gm/ConversationHeaderViewModel;->getLayoutHashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method validate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateText:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->rawLabels:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->fromSnippetInstructions:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gm/ConversationHeaderViewModel;->getHashCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->mDataHashCode:I

    .line 244
    invoke-direct {p0}, Lcom/google/android/gm/ConversationHeaderViewModel;->getLayoutHashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->mLayoutHashCode:I

    .line 245
    return-void
.end method
