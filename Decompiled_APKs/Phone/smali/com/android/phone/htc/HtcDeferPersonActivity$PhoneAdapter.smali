.class public Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcDeferPersonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/htc/HtcDeferPersonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PhoneAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/htc/HtcDeferPersonActivity;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    .line 331
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 332
    return-void
.end method
