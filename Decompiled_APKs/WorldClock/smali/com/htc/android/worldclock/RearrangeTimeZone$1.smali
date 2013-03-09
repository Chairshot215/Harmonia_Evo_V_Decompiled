.class Lcom/htc/android/worldclock/RearrangeTimeZone$1;
.super Ljava/lang/Object;
.source "RearrangeTimeZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/RearrangeTimeZone;->onInitChild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$1;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$1;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    #calls: Lcom/htc/android/worldclock/RearrangeTimeZone;->updateRearrangeZone()V
    invoke-static {v0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->access$000(Lcom/htc/android/worldclock/RearrangeTimeZone;)V

    .line 90
    return-void
.end method
