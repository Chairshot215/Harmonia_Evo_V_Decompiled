.class Lcom/htc/android/worldclock/RearrangeTimeZone$3;
.super Ljava/lang/Object;
.source "RearrangeTimeZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/RearrangeTimeZone;->updateRearrangeZone()V
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
    .line 174
    iput-object p1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$3;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$3;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/RearrangeTimeZone;->setResult(I)V

    .line 178
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$3;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->finish()V

    .line 179
    return-void
.end method
