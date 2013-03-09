.class Lcom/htc/launcher/Folder$2;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/htc/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/htc/launcher/Folder$2;->this$0:Lcom/htc/launcher/Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/htc/launcher/Alarm;)V
    .locals 3
    .parameter "alarm"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/launcher/Folder$2;->this$0:Lcom/htc/launcher/Folder;

    iget-object v1, p0, Lcom/htc/launcher/Folder$2;->this$0:Lcom/htc/launcher/Folder;

    #getter for: Lcom/htc/launcher/Folder;->m_nEmptyCell:[I
    invoke-static {v1}, Lcom/htc/launcher/Folder;->access$000(Lcom/htc/launcher/Folder;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Folder$2;->this$0:Lcom/htc/launcher/Folder;

    #getter for: Lcom/htc/launcher/Folder;->m_nTargetCell:[I
    invoke-static {v2}, Lcom/htc/launcher/Folder;->access$100(Lcom/htc/launcher/Folder;)[I

    move-result-object v2

    #calls: Lcom/htc/launcher/Folder;->realTimeReorder([I[I)V
    invoke-static {v0, v1, v2}, Lcom/htc/launcher/Folder;->access$200(Lcom/htc/launcher/Folder;[I[I)V

    .line 359
    return-void
.end method
