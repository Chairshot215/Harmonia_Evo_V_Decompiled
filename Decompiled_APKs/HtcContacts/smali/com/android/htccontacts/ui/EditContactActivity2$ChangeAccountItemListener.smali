.class Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChangeAccountItemListener"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/EditContactActivity2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 6525
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6526
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 6527
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 6529
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6530
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 6531
    .local v0, activity:Lcom/android/htccontacts/ui/EditContactActivity2;
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->resetNewContact()V

    .line 6533
    .end local v0           #activity:Lcom/android/htccontacts/ui/EditContactActivity2;
    :cond_0
    return-void
.end method
