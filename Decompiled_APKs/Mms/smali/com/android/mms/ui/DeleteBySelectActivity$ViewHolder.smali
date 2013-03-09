.class Lcom/android/mms/ui/DeleteBySelectActivity$ViewHolder;
.super Ljava/lang/Object;
.source "DeleteBySelectActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$ViewHolder;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "listitem"

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method
