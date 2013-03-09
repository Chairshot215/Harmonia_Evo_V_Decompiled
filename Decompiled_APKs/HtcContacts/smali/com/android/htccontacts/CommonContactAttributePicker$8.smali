.class Lcom/android/htccontacts/CommonContactAttributePicker$8;
.super Ljava/lang/Object;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
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
    .line 2177
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$8;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$8;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->setCountTitle()V
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3000(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    .line 2180
    return-void
.end method
