.class Lcom/android/phone/ADNList$1;
.super Ljava/lang/Object;
.source "ADNList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ADNList;->sortFdnByName([Lcom/android/phone/ADNList$FdnData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;

.field final synthetic val$bSmalltoBig:Z


# direct methods
.method constructor <init>(Lcom/android/phone/ADNList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/phone/ADNList$1;->this$0:Lcom/android/phone/ADNList;

    iput-boolean p2, p0, Lcom/android/phone/ADNList$1;->val$bSmalltoBig:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/phone/ADNList$1;->val$bSmalltoBig:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 332
    check-cast p1, Lcom/android/phone/ADNList$FdnData;

    .end local p1
    iget-object v0, p1, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    check-cast p2, Lcom/android/phone/ADNList$FdnData;

    .end local p2
    iget-object v1, p2, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 334
    :goto_0
    return v0

    .restart local p1
    .restart local p2
    :cond_0
    check-cast p2, Lcom/android/phone/ADNList$FdnData;

    .end local p2
    iget-object v0, p2, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    check-cast p1, Lcom/android/phone/ADNList$FdnData;

    .end local p1
    iget-object v1, p1, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
