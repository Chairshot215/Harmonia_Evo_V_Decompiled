.class Lcom/htc/csengine/activity/main$2;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/csengine/activity/main;->_appendToLogView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/csengine/activity/main;

.field final synthetic val$svLog:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/htc/csengine/activity/main;Landroid/widget/ScrollView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/csengine/activity/main$2;->this$0:Lcom/htc/csengine/activity/main;

    iput-object p2, p0, Lcom/htc/csengine/activity/main$2;->val$svLog:Landroid/widget/ScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/csengine/activity/main$2;->val$svLog:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 137
    return-void
.end method
