.class final Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;
.super Ljava/lang/Object;
.source "CompanyDirectorySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Status"
.end annotation


# static fields
.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public mCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1038
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;->mCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;-><init>()V

    return-void
.end method
