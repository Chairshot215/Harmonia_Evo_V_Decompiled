.class final Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;
.super Ljava/lang/Object;
.source "SDCardWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/SDCardWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderItem"
.end annotation


# instance fields
.field private final holder:Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;

.field public final item:Lcom/htc/sdcardwizard/CategoryItem;


# direct methods
.method public constructor <init>(Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;Lcom/htc/sdcardwizard/CategoryItem;)V
    .locals 0
    .parameter "holder"
    .parameter "item"

    .prologue
    .line 240
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;->holder:Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;

    .line 242
    iput-object p2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;->item:Lcom/htc/sdcardwizard/CategoryItem;

    .line 243
    return-void
.end method


# virtual methods
.method public update(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;->holder:Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;

    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;->item:Lcom/htc/sdcardwizard/CategoryItem;

    invoke-virtual {v0, p1, v1}, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->setItem(Landroid/content/Context;Lcom/htc/sdcardwizard/CategoryItem;)V

    .line 247
    return-void
.end method
