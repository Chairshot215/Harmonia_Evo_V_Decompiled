.class Lcom/htc/launcher/AddAdapter$2;
.super Ljava/lang/Object;
.source "AddAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/AddAdapter;->addSettingsWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/AddAdapter;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/launcher/AddAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$2;->this$0:Lcom/htc/launcher/AddAdapter;

    iput-object p2, p0, Lcom/htc/launcher/AddAdapter$2;->val$list:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 751
    sget-object v0, Lcom/htc/launcher/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 752
    sget-object v0, Lcom/htc/launcher/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/launcher/AddAdapter$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 753
    return-void
.end method
