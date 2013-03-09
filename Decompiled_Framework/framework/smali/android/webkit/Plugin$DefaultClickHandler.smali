.class Landroid/webkit/Plugin$DefaultClickHandler;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Landroid/webkit/Plugin$PreferencesClickHandler;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultClickHandler"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDialog:Lcom/htc/dialog/HtcAlertDialog;

.field final synthetic this$0:Landroid/webkit/Plugin;


# direct methods
.method private constructor <init>(Landroid/webkit/Plugin;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;)V

    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    #getter for: Landroid/webkit/Plugin;->mName:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/Plugin;->access$200(Landroid/webkit/Plugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    #getter for: Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/Plugin;->access$100(Landroid/webkit/Plugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    return-void
.end method
