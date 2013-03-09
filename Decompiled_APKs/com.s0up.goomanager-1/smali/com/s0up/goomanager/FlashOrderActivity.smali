.class public Lcom/s0up/goomanager/FlashOrderActivity;
.super Landroid/app/Activity;
.source "FlashOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/FlashOrderActivity$ButtonListener;,
        Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;,
        Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;,
        Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GooManager.FlashOrderActivity"

.field private static mZipArray:[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

.field private static mZipOrderAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCbBackup:Landroid/widget/CheckBox;

.field private mCbCache:Landroid/widget/CheckBox;

.field private mCbData:Landroid/widget/CheckBox;

.field private mFlashOrderListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/FlashOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/s0up/goomanager/FlashOrderActivity;->prepareFlash()V

    return-void
.end method

.method static synthetic access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/s0up/goomanager/FlashOrderActivity;->mZipArray:[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    return-object v0
.end method

.method static synthetic access$2()Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/s0up/goomanager/FlashOrderActivity;->mZipOrderAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/s0up/goomanager/FlashOrderActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mCbBackup:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getSelectedFiles()V
    .locals 6

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, selectedCount:I
    const/4 v1, 0x0

    .line 146
    .local v1, listCount:I
    sget-object v3, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/s0up/goomanager/FlashOrderActivity;->finish()V

    .line 148
    invoke-virtual {p0}, Lcom/s0up/goomanager/FlashOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "No files were found."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 151
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 157
    new-array v3, v2, [Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    sput-object v3, Lcom/s0up/goomanager/FlashOrderActivity;->mZipArray:[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    .line 159
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 167
    const-string v3, "GooManager.FlashOrderActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mZipArray.size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/s0up/goomanager/FlashOrderActivity;->mZipArray:[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 152
    :cond_1
    sget-object v3, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/s0up/goomanager/FlashActivity$FileName;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 151
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_3
    sget-object v3, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/s0up/goomanager/FlashActivity$FileName;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    const-string v3, "GooManager.FlashOrderActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Selected to flash: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v3, Lcom/s0up/goomanager/FlashOrderActivity;->mZipArray:[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    new-instance v4, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    sget-object v5, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 159
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private prepareFlash()V
    .locals 9

    .prologue
    .line 173
    sget-object v1, Lcom/s0up/goomanager/FlashOrderActivity;->mZipArray:[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/String;

    .line 174
    .local v2, finalZip:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    sget-object v1, Lcom/s0up/goomanager/FlashOrderActivity;->mZipArray:[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    array-length v1, v1

    if-lt v7, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mCbCache:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 180
    .local v3, wipeCache:Z
    iget-object v1, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mCbData:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 181
    .local v4, wipeData:Z
    iget-object v1, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mCbBackup:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 184
    .local v5, createBackup:Z
    new-instance v0, Lcom/s0up/goomanager/FlashOrderActivity$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/s0up/goomanager/FlashOrderActivity$2;-><init>(Lcom/s0up/goomanager/FlashOrderActivity;[Ljava/lang/String;ZZZ)V

    .line 200
    .local v0, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 202
    const-string v1, "Confirm flash"

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 203
    const-string v1, "Are you sure you would like to continue?  Flashing the wrong file could cause serious damage to your device."

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v8, "Yes"

    invoke-virtual {v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 204
    const-string v8, "No"

    invoke-virtual {v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 205
    return-void

    .line 175
    .end local v0           #dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v3           #wipeCache:Z
    .end local v4           #wipeData:Z
    .end local v5           #createBackup:Z
    .end local v6           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    sget-object v1, Lcom/s0up/goomanager/FlashOrderActivity;->mZipArray:[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 174
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/FlashOrderActivity;->setContentView(I)V

    .line 49
    const v2, 0x7f090019

    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/FlashOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mFlashOrderListView:Landroid/widget/ListView;

    .line 50
    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/FlashOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mCbCache:Landroid/widget/CheckBox;

    .line 51
    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/FlashOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mCbData:Landroid/widget/CheckBox;

    .line 52
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/FlashOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mCbBackup:Landroid/widget/CheckBox;

    .line 54
    const v2, 0x7f09001e

    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/FlashOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, btnFlash:Landroid/widget/Button;
    new-instance v2, Lcom/s0up/goomanager/FlashOrderActivity$ButtonListener;

    invoke-direct {v2, p0, v4}, Lcom/s0up/goomanager/FlashOrderActivity$ButtonListener;-><init>(Lcom/s0up/goomanager/FlashOrderActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mCbBackup:Landroid/widget/CheckBox;

    new-instance v3, Lcom/s0up/goomanager/FlashOrderActivity$1;

    invoke-direct {v3, p0}, Lcom/s0up/goomanager/FlashOrderActivity$1;-><init>(Lcom/s0up/goomanager/FlashOrderActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    invoke-direct {p0}, Lcom/s0up/goomanager/FlashOrderActivity;->getSelectedFiles()V

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;>;"
    sget-object v2, Lcom/s0up/goomanager/FlashOrderActivity;->mZipArray:[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/s0up/goomanager/FlashOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "You must select a file before flashing"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 117
    invoke-virtual {p0}, Lcom/s0up/goomanager/FlashOrderActivity;->finish()V

    .line 119
    :cond_0
    new-instance v2, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;

    invoke-direct {v2, p0, v1}, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v2, Lcom/s0up/goomanager/FlashOrderActivity;->mZipOrderAdapter:Landroid/widget/ArrayAdapter;

    .line 120
    iget-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity;->mFlashOrderListView:Landroid/widget/ListView;

    sget-object v3, Lcom/s0up/goomanager/FlashOrderActivity;->mZipOrderAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    return-void
.end method
