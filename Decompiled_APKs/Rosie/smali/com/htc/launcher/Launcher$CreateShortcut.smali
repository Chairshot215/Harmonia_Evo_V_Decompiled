.class Lcom/htc/launcher/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/launcher/AddAdapter;

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5691
    iput-object p1, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5691
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$CreateShortcut;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 5720
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->unlock()V

    .line 5721
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->dismissDialog(I)V

    .line 5722
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5696
    iget-object v2, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mWaitingForResult:Z
    invoke-static {v2, v4}, Lcom/htc/launcher/Launcher;->access$5302(Lcom/htc/launcher/Launcher;Z)Z

    .line 5698
    new-instance v2, Lcom/htc/launcher/AddAdapter;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {v2, v3}, Lcom/htc/launcher/AddAdapter;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v2, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->mAdapter:Lcom/htc/launcher/AddAdapter;

    .line 5700
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5702
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5703
    iget-object v2, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5705
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 5707
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 5708
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 5710
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 5715
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$5302(Lcom/htc/launcher/Launcher;Z)Z

    .line 5716
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$CreateShortcut;->cleanup()V

    .line 5717
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5729
    iget-object v10, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 5730
    .local v7, res:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$CreateShortcut;->cleanup()V

    .line 5732
    packed-switch p2, :pswitch_data_0

    .line 5793
    :goto_0
    :pswitch_0
    return-void

    .line 5735
    :pswitch_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5737
    .local v2, bundle:Landroid/os/Bundle;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5738
    .local v9, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f0b001b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5739
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5742
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5743
    .local v8, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    iget-object v10, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    const v11, 0x2080150

    invoke-static {v10, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5746
    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5749
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5750
    .local v6, pickIntent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.INTENT"

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5752
    const-string v10, "android.intent.extra.TITLE"

    iget-object v11, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    const v12, 0x7f0b001d

    invoke-virtual {v11, v12}, Lcom/htc/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 5754
    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5756
    iget-object v10, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v11, 0x7

    invoke-virtual {v10, v6, v11}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5761
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v6           #pickIntent:Landroid/content/Intent;
    .end local v8           #shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    .end local v9           #shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v10, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v10, v10, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v10}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 5764
    .local v0, appWidgetId:I
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5766
    .restart local v6       #pickIntent:Landroid/content/Intent;
    const-string v10, "appWidgetId"

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5769
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5770
    .local v4, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 5771
    .local v5, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v11}, Lcom/htc/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "XXX.YYY"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 5772
    iget-object v10, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    const v11, 0x20c0138

    invoke-virtual {v10, v11}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 5773
    const v10, 0x7f020058

    iput v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 5774
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5775
    const-string v10, "customInfo"

    invoke-virtual {v6, v10, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5777
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5778
    .local v3, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5779
    .local v1, b:Landroid/os/Bundle;
    const-string v10, "custom_widget"

    const-string v11, "search_widget"

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5780
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5781
    const-string v10, "customExtras"

    invoke-virtual {v6, v10, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5784
    iget-object v10, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v11, 0x9

    invoke-virtual {v10, v6, v11}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 5789
    .end local v0           #appWidgetId:I
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4           #customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v5           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6           #pickIntent:Landroid/content/Intent;
    :pswitch_3
    iget-object v10, p0, Lcom/htc/launcher/Launcher$CreateShortcut;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->startWallpaper()V
    invoke-static {v10}, Lcom/htc/launcher/Launcher;->access$5400(Lcom/htc/launcher/Launcher;)V

    goto/16 :goto_0

    .line 5732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
