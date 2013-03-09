.class public Lcom/htc/launcher/OperatorTabCore$Application;
.super Ljava/lang/Object;
.source "OperatorTabCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/OperatorTabCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field public final className:Ljava/lang/String;

.field private component:Landroid/content/ComponentName;

.field public final packageName:Ljava/lang/String;

.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "className"
    .parameter "priority"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/htc/launcher/OperatorTabCore$Application;->packageName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/htc/launcher/OperatorTabCore$Application;->className:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/htc/launcher/OperatorTabCore$Application;->priority:I

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabCore$Application;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/htc/launcher/OperatorTabCore$Application;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/launcher/OperatorTabCore$Application;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/launcher/OperatorTabCore$Application;->component:Landroid/content/ComponentName;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabCore$Application;->component:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
