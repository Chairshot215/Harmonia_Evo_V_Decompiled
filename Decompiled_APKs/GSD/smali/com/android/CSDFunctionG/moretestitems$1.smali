.class Lcom/android/CSDFunctionG/moretestitems$1;
.super Landroid/os/Handler;
.source "moretestitems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/moretestitems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/moretestitems;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/moretestitems;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/CSDFunctionG/moretestitems$1;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/moretestitems$1;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    #calls: Lcom/android/CSDFunctionG/moretestitems;->ShowDialog()V
    invoke-static {v0}, Lcom/android/CSDFunctionG/moretestitems;->access$000(Lcom/android/CSDFunctionG/moretestitems;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
