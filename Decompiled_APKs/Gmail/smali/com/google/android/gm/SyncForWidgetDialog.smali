.class public Lcom/google/android/gm/SyncForWidgetDialog;
.super Landroid/app/AlertDialog;
.source "SyncForWidgetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mConfirmClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mGmail:Lcom/google/android/gm/provider/Gmail;

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 13
    .parameter "context"
    .parameter "account"
    .parameter "canonicalName"
    .parameter "confirmWidgetCreationListener"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mAccount:Ljava/lang/String;

    .line 37
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mLabel:Ljava/lang/String;

    .line 38
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mConfirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 40
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 43
    iget-object v9, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v10, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mAccount:Ljava/lang/String;

    invoke-virtual {v9, p1, v10}, Lcom/google/android/gm/provider/Gmail;->getSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v6

    .line 44
    .local v6, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    invoke-virtual {v6}, Lcom/google/android/gm/provider/Gmail$Settings;->getConversationAgeDays()J

    move-result-wide v7

    .line 46
    .local v7, syncDays:J
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 48
    .local v4, res:Landroid/content/res/Resources;
    const v9, 0x7f0c002d

    invoke-virtual {p0, v9}, Lcom/google/android/gm/SyncForWidgetDialog;->setTitle(I)V

    .line 49
    const/high16 v9, 0x7f03

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/google/android/gm/SyncForWidgetDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/4 v9, -0x1

    const v10, 0x104000a

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, p0}, Lcom/google/android/gm/SyncForWidgetDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 51
    const/4 v9, -0x2

    const/high16 v10, 0x104

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, p0}, Lcom/google/android/gm/SyncForWidgetDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    const-string v9, "layout_inflater"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 56
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f04003c

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, dialogContents:Landroid/view/View;
    const v9, 0x7f0f00a4

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 59
    .local v1, checkboxView:Landroid/widget/CheckBox;
    const v9, 0x7f0c002f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/google/android/gm/SyncForWidgetDialog;->setView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/SyncForWidgetDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/SyncForWidgetDialog;)Lcom/google/android/gm/provider/Gmail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mGmail:Lcom/google/android/gm/provider/Gmail;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/SyncForWidgetDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mLabel:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 65
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 66
    const v2, 0x7f0f00a4

    invoke-virtual {p0, v2}, Lcom/google/android/gm/SyncForWidgetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 68
    .local v0, confirmView:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v1, Lcom/google/android/gm/SyncForWidgetDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/SyncForWidgetDialog$1;-><init>(Lcom/google/android/gm/SyncForWidgetDialog;)V

    .line 87
    .local v1, enableLabelSyncTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Landroid/content/Context;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gm/SyncForWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    .end local v0           #confirmView:Landroid/widget/CheckBox;
    .end local v1           #enableLabelSyncTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Landroid/content/Context;Ljava/lang/Void;Ljava/lang/Void;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/SyncForWidgetDialog;->mConfirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v2, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 93
    return-void
.end method
