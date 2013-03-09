.class Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "OperatorSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/prefernetwork/OperatorSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

.field private mNameIdx:I

.field final synthetic this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/prefernetwork/OperatorSelectActivity;Landroid/content/Context;Lcom/android/phone/prefernetwork/OperatorSelectActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 208
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 210
    iput-object p3, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->mActivity:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    .line 211
    invoke-direct {p0, p5}, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 212
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->mNameIdx:I

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;

    .line 245
    .local v1, vh:Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;
    iget-object v2, v1, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->mNameIdx:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, v1, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;->icon2:Landroid/widget/ImageView;

    .line 248
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->mActivity:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$000(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->mActivity:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->setCheckedView(Landroid/view/View;Z)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->mActivity:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-virtual {v2, p1, v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->setCheckedView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 261
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 262
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, v:Landroid/view/View;
    new-instance v2, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;-><init>(Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;)V

    .line 228
    .local v2, vh:Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;
    const v3, 0x7f080157

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 229
    const v3, 0x7f080158

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter$ViewHolder;->icon2:Landroid/widget/ImageView;

    .line 230
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    const v3, 0x7f0800b1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 233
    .local v0, iconView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 234
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    :cond_0
    return-object v1
.end method

.method public setActivity(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->mActivity:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    .line 222
    return-void
.end method
