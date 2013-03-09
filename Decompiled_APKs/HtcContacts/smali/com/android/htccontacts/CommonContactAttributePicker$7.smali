.class Lcom/android/htccontacts/CommonContactAttributePicker$7;
.super Ljava/lang/Object;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;->collectDataThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/CommonContactAttributePicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1946
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$7;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$7;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->dismissQueryProgress()V
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$200(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    .line 1949
    return-void
.end method
