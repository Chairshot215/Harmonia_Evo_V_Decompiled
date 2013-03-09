.class Lcom/htc/opensense/plugin/SelectableServices$1;
.super Ljava/lang/Object;
.source "SelectableServices.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/plugin/SelectableServices;-><init>(Landroid/app/Activity;Landroid/content/ComponentName;)V
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
        "Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/plugin/SelectableServices;


# direct methods
.method constructor <init>(Lcom/htc/opensense/plugin/SelectableServices;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/plugin/SelectableServices$1;->this$0:Lcom/htc/opensense/plugin/SelectableServices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;)I
    .locals 2

    iget-object v0, p1, Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;->serviceTitle:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;->serviceTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;

    check-cast p2, Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/plugin/SelectableServices$1;->compare(Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;)I

    move-result v0

    return v0
.end method
