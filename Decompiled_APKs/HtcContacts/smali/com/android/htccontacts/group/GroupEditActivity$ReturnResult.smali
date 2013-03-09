.class Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReturnResult"
.end annotation


# instance fields
.field appendIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field cursor:Landroid/database/Cursor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1960
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1960
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;-><init>()V

    return-void
.end method
