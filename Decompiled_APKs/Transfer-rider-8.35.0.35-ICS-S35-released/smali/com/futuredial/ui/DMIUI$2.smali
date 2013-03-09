.class Lcom/futuredial/ui/DMIUI$2;
.super Ljava/util/TimerTask;
.source "DMIUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/DMIUI;->dmi_notify(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/DMIUI;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/DMIUI;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/futuredial/ui/DMIUI$2;->this$0:Lcom/futuredial/ui/DMIUI;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI$2;->this$0:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
