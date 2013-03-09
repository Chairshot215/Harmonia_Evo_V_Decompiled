.class Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;
.super Ljava/lang/Exception;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanceledException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;->this$1:Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;Lcom/android/htccontacts/ImportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;)V

    return-void
.end method
