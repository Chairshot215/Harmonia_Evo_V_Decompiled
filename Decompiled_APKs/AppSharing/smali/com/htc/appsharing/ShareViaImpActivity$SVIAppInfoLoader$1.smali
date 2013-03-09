.class Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader$1;
.super Ljava/lang/Object;
.source "ShareViaImpActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;-><init>(Lcom/htc/appsharing/ShareViaImpActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

.field final synthetic val$this$0:Lcom/htc/appsharing/ShareViaImpActivity;


# direct methods
.method constructor <init>(Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;Lcom/htc/appsharing/ShareViaImpActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader$1;->this$1:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

    iput-object p2, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader$1;->val$this$0:Lcom/htc/appsharing/ShareViaImpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;)I
    .locals 3
    .parameter "app1"
    .parameter "app2"

    .prologue
    .line 166
    iget-object v0, p1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;->label:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, label1:Ljava/lang/String;
    iget-object v1, p2, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;->label:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, label2:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    .line 171
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    check-cast p1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;

    .end local p1
    check-cast p2, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader$1;->compare(Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;)I

    move-result v0

    return v0
.end method
