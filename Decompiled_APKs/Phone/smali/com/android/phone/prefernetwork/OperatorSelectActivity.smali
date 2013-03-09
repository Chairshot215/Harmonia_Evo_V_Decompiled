.class public Lcom/android/phone/prefernetwork/OperatorSelectActivity;
.super Landroid/app/Activity;
.source "OperatorSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;
    }
.end annotation


# static fields
.field private static final COL_ID:Ljava/lang/String; = "_id"

.field private static final COL_MNC:Ljava/lang/String; = "mnc"

.field private static final COL_NAME:Ljava/lang/String; = "name"

.field private static final OPERATOR_INIT_SIZE:I = 0xa


# instance fields
.field private mActionAdapter:Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;

.field private mActionCols:[Ljava/lang/String;

.field private mActionCursor:Landroid/database/Cursor;

.field private mActionView:Lcom/htc/widget/HtcListView;

.field private mAddButton:Landroid/widget/Button;

.field private mAddListener:Landroid/view/View$OnClickListener;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCols:[Ljava/lang/String;

    .line 276
    new-instance v0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity$1;-><init>(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 296
    new-instance v0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;-><init>(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddListener:Landroid/view/View$OnClickListener;

    .line 324
    new-instance v0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$3;

    invoke-direct {v0, p0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity$3;-><init>(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/prefernetwork/OperatorSelectActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->handleClick(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private getActionCursor()Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 180
    invoke-static {p0}, Lcom/android/phone/prefernetwork/OperatorData;->getOperatorCodeList(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 181
    .local v0, codeList:[Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/android/phone/prefernetwork/OperatorData;->getOperatorNameList(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 182
    .local v5, nameList:[Ljava/lang/CharSequence;
    array-length v2, v0

    .line 183
    .local v2, dataLen:I
    new-instance v1, Landroid/database/MatrixCursor;

    iget-object v7, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCols:[Ljava/lang/String;

    const/16 v8, 0xa

    invoke-direct {v1, v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 185
    .local v1, cursor:Landroid/database/MatrixCursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v4, lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 187
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v6, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    .end local v6           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    return-object v1
.end method

.method private handleClick(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 284
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 288
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0, v9}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->requestWindowFeature(I)Z

    .line 98
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->setContentView(I)V

    .line 100
    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HeaderBarText;

    .line 101
    .local v8, headerText:Lcom/htc/widget/HeaderBarText;
    const v0, 0x7f0e01e1

    invoke-virtual {v8, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 102
    invoke-virtual {v8, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 104
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddButton:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddButton:Landroid/widget/Button;

    const v1, 0x7f0e01db

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 114
    :cond_0
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mCancelButton:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mCancelButton:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 124
    :cond_1
    new-instance v0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;

    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f03005d

    iget-object v5, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;

    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v3, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;-><init>(Lcom/android/phone/prefernetwork/OperatorSelectActivity;Landroid/content/Context;Lcom/android/phone/prefernetwork/OperatorSelectActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionAdapter:Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;

    .line 126
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionView:Lcom/htc/widget/HtcListView;

    .line 128
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 129
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionAdapter:Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 132
    invoke-direct {p0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->getActionCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->updateActionList()V

    .line 134
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 148
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 153
    return-void
.end method

.method public setCheckedView(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 266
    const v2, 0x7f080158

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 267
    .local v0, checkbox:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 268
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 269
    const v2, 0x1080189

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 274
    return-void

    .line 271
    :cond_0
    const v2, 0x108017b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateActionList()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionAdapter:Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;

    iget-object v1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/phone/prefernetwork/OperatorSelectActivity$ActionAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 138
    return-void
.end method
