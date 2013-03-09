.class Lcom/htc/android/worldclock/DeleteTimeZone$1;
.super Ljava/lang/Object;
.source "DeleteTimeZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteTimeZone;->onInitChild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeleteTimeZone;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeleteTimeZone;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$1;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone$1;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    #calls: Lcom/htc/android/worldclock/DeleteTimeZone;->updateDeleteZone()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeleteTimeZone;->access$000(Lcom/htc/android/worldclock/DeleteTimeZone;)V

    .line 71
    return-void
.end method
