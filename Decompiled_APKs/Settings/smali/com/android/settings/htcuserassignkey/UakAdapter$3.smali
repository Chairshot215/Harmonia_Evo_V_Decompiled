.class Lcom/android/settings/htcuserassignkey/UakAdapter$3;
.super Ljava/lang/Object;
.source "UakAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/htcuserassignkey/UakAdapter;->addProgramItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

.field final synthetic val$tempList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$3;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    iput-object p2, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$3;->val$tempList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$3;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    #getter for: Lcom/android/settings/htcuserassignkey/UakAdapter;->maddProgramItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->access$100(Lcom/android/settings/htcuserassignkey/UakAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 476
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$3;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    #getter for: Lcom/android/settings/htcuserassignkey/UakAdapter;->maddProgramItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->access$100(Lcom/android/settings/htcuserassignkey/UakAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$3;->val$tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 477
    return-void
.end method
