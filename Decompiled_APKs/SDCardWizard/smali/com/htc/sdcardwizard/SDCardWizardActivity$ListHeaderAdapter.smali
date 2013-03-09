.class final Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;
.super Ljava/lang/Object;
.source "SDCardWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/SDCardWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListHeaderAdapter"
.end annotation


# instance fields
.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 282
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;->items:Ljava/util/ArrayList;

    .line 284
    return-void
.end method


# virtual methods
.method public addItem(Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public getItem(I)Lcom/htc/sdcardwizard/CategoryItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;

    .line 300
    .local v0, headerItem:Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;->item:Lcom/htc/sdcardwizard/CategoryItem;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 291
    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;

    .line 292
    .local v1, item:Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;
    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v1, p1}, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;->update(Landroid/content/Context;)V

    goto :goto_0

    .line 296
    .end local v1           #item:Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;
    :cond_1
    return-void
.end method
