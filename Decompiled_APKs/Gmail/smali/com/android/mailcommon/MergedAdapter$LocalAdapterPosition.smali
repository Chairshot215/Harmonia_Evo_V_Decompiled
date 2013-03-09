.class public Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;
.super Ljava/lang/Object;
.source "MergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mailcommon/MergedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalAdapterPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mLocalPosition:I


# direct methods
.method public constructor <init>(Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;I)V
    .locals 0
    .parameter
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition<TT;>;"
    .local p1, adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    .line 54
    iput p2, p0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    .line 55
    return-void
.end method
