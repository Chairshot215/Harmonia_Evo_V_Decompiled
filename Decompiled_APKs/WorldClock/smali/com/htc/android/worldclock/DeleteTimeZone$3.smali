.class Lcom/htc/android/worldclock/DeleteTimeZone$3;
.super Ljava/lang/Object;
.source "DeleteTimeZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteTimeZone;->updateDeleteZone()V
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
    .line 147
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$3;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$3;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$3;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$3;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    aput-boolean v2, v1, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$3;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/DeleteTimeZone;->setResult(I)V

    .line 158
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$3;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/DeleteTimeZone;->finish()V

    goto :goto_0
.end method
