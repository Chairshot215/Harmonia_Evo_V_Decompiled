.class interface abstract Lcom/android/htccontacts/ui/QuickContactWindow$PhotoMimeQuery;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PhotoMimeQuery"
.end annotation


# static fields
.field public static final MIMETYPE:I

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2276
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ui/QuickContactWindow$PhotoMimeQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
