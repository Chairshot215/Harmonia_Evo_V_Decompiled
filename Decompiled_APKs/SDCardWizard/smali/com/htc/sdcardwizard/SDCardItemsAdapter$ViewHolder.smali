.class final Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SDCardItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/SDCardItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field private final checkbox:Lcom/htc/widget/HtcListItemCheckBox;

.field private final icon:Lcom/htc/widget/HtcListItemColorIcon;

.field private final text:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcListItemColorIcon;Lcom/htc/widget/HtcListItem2LineText;Lcom/htc/widget/HtcListItemCheckBox;)V
    .locals 0
    .parameter "icon"
    .parameter "text"
    .parameter "checkbox"

    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 164
    iput-object p2, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 165
    iput-object p3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 166
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 186
    return-void
.end method

.method public setItem(Lcom/htc/sdcardwizard/handler/SDCardItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 171
    .local v0, itemIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 182
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_0
.end method
