.class Lcom/htc/sdcardwizard/CategoryItems$1;
.super Ljava/lang/Object;
.source "CategoryItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/CategoryItems;->update(Landroid/app/Activity;Lcom/htc/sdcardwizard/UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/CategoryItems;

.field final synthetic val$listener:Lcom/htc/sdcardwizard/UpdateListener;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/CategoryItems;Lcom/htc/sdcardwizard/UpdateListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/sdcardwizard/CategoryItems$1;->this$0:Lcom/htc/sdcardwizard/CategoryItems;

    iput-object p2, p0, Lcom/htc/sdcardwizard/CategoryItems$1;->val$listener:Lcom/htc/sdcardwizard/UpdateListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItems$1;->val$listener:Lcom/htc/sdcardwizard/UpdateListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItems$1;->val$listener:Lcom/htc/sdcardwizard/UpdateListener;

    invoke-interface {v0}, Lcom/htc/sdcardwizard/UpdateListener;->onUpdateComplete()V

    .line 120
    :cond_0
    return-void
.end method
