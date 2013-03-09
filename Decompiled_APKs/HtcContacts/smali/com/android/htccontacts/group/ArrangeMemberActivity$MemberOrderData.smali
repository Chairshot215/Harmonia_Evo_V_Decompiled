.class Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;
.super Ljava/lang/Object;
.source "ArrangeMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/ArrangeMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemberOrderData"
.end annotation


# instance fields
.field public memberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 393
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/group/ArrangeMemberActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;-><init>()V

    return-void
.end method
