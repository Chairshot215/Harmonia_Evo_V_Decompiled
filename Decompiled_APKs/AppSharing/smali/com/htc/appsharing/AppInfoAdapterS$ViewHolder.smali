.class Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;
.super Ljava/lang/Object;
.source "AppInfoAdapterS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/appsharing/AppInfoAdapterS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Lcom/htc/widget/HtcListItemColorIcon;

.field label:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/appsharing/AppInfoAdapterS;


# direct methods
.method private constructor <init>(Lcom/htc/appsharing/AppInfoAdapterS;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;->this$0:Lcom/htc/appsharing/AppInfoAdapterS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/appsharing/AppInfoAdapterS;Lcom/htc/appsharing/AppInfoAdapterS$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;-><init>(Lcom/htc/appsharing/AppInfoAdapterS;)V

    return-void
.end method
