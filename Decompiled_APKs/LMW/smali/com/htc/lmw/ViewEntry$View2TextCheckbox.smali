.class public Lcom/htc/lmw/ViewEntry$View2TextCheckbox;
.super Lcom/htc/lmw/ViewEntry$View2TextBase;
.source "ViewEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/ViewEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View2TextCheckbox"
.end annotation


# instance fields
.field private checked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryText"
    .parameter "checked"

    .prologue
    .line 167
    const v2, 0x7f030006

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/lmw/ViewEntry$View2TextBase;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    .line 168
    iput-boolean p5, p0, Lcom/htc/lmw/ViewEntry$View2TextCheckbox;->checked:Z

    .line 169
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/htc/lmw/ViewEntry$View2TextBase;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, view:Landroid/view/View;
    const v2, 0x202001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 175
    .local v0, chk:Landroid/widget/CheckBox;
    iget-boolean v2, p0, Lcom/htc/lmw/ViewEntry$View2TextCheckbox;->checked:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 176
    iget-object v2, p0, Lcom/htc/lmw/ViewEntry;->context:Landroid/content/Context;

    const-string v3, "common_checkbox"

    const v4, 0x2080012

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 179
    return-object v1
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/htc/lmw/ViewEntry$View2TextCheckbox;->checked:Z

    .line 184
    return-void
.end method
