.class Lcom/htc/android/worldclock/DeleteAlarm$2;
.super Ljava/lang/Object;
.source "DeleteAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeleteAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeleteAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteAlarm$2;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$2;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/DeleteAlarm;->setResult(I)V

    .line 116
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$2;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeleteAlarm;->finish()V

    .line 117
    return-void
.end method
