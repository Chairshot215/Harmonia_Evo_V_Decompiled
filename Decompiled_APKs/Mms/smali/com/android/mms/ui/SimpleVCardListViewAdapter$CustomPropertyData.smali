.class Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;
.super Ljava/lang/Object;
.source "SimpleVCardListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SimpleVCardListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomPropertyData"
.end annotation


# instance fields
.field public data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public kind:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

.field final synthetic this$0:Lcom/android/mms/ui/SimpleVCardListViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->this$0:Lcom/android/mms/ui/SimpleVCardListViewAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->data:Ljava/util/HashMap;

    return-void
.end method
