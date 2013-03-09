.class public Lcom/android/internal/telephony/HtcTelephony$AuthRequest;
.super Ljava/lang/Object;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthRequest"
.end annotation


# instance fields
.field public autn:[B

.field public rand:[B

.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephony;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/HtcTelephony;[B[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->rand:[B

    iput-object p3, p0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->autn:[B

    return-void
.end method
