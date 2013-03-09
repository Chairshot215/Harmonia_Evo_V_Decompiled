.class Lcom/google/android/gm/LabelListFragment$LabelListItem;
.super Ljava/lang/Object;
.source "LabelListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LabelListItem"
.end annotation


# instance fields
.field final mHeaderText:Ljava/lang/String;

.field final mLabel:Lcom/google/android/gm/provider/Label;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/Label;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/google/android/gm/LabelListFragment$LabelListItem;->mLabel:Lcom/google/android/gm/provider/Label;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelListItem;->mHeaderText:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "headerText"

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/google/android/gm/LabelListFragment$LabelListItem;->mHeaderText:Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelListItem;->mLabel:Lcom/google/android/gm/provider/Label;

    .line 287
    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelListItem;->mHeaderText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHeader()Z
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment$LabelListItem;->getItemType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
