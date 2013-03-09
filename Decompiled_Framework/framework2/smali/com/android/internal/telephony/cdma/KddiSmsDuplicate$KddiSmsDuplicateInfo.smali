.class public Lcom/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;
.super Ljava/lang/Object;
.source "KddiSmsDuplicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KddiSmsDuplicateInfo"
.end annotation


# instance fields
.field public mMessageBody:[B

.field public mMessageBodyLength:I

.field public mMessageID:I

.field public mSendAck:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;III[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->this$0:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    iput p3, p0, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    iput p4, p0, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBodyLength:I

    iput-object p5, p0, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBody:[B

    return-void
.end method
