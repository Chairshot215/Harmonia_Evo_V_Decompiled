.class final Lcom/android/mms/ui/MessageUtils$8;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$positiveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1849
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$8;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$8;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$8;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$8;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$8;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$8;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$8;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$8;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    #calls: Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->access$000(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1854
    return-void
.end method
