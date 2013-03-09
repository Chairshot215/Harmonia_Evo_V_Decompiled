.class public Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountCount;
.super Ljava/lang/Object;
.source "DisplayExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountCount"
.end annotation


# instance fields
.field public mAccountName:Ljava/lang/String;

.field public mCounts:Ljava/lang/String;

.field public mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
