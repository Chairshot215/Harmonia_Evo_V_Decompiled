.class final Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;
.super Ljava/lang/Object;
.source "SDCardWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/SDCardWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderItemHolder"
.end annotation


# instance fields
.field private final stamp:Lcom/htc/widget/HtcListItem2LineStamp;

.field private final text:Lcom/htc/widget/HtcListItem2LineText;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 255
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->view:Landroid/view/View;

    .line 257
    const v0, 0x7f060007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 258
    const v0, 0x7f060008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 259
    return-void
.end method


# virtual methods
.method public setItem(Landroid/content/Context;Lcom/htc/sdcardwizard/CategoryItem;)V
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    .line 262
    if-eqz p2, :cond_0

    .line 263
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p2, Lcom/htc/sdcardwizard/CategoryItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {p2}, Lcom/htc/sdcardwizard/CategoryItem;->getCount()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p2, Lcom/htc/sdcardwizard/CategoryItem;->ps:Lcom/htc/sdcardwizard/utils/PluralSingular;

    invoke-static {v2, v3, v4}, Lcom/htc/sdcardwizard/utils/Formatter;->count(JLcom/htc/sdcardwizard/utils/PluralSingular;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {p2}, Lcom/htc/sdcardwizard/CategoryItem;->getSize()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/htc/sdcardwizard/utils/Formatter;->filesize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Lcom/htc/sdcardwizard/CategoryItem;->isEnabled()Z

    move-result v0

    .line 268
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 269
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setEnabled(Z)V

    .line 270
    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;->view:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 272
    .end local v0           #enabled:Z
    :cond_0
    return-void

    .line 270
    .restart local v0       #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
