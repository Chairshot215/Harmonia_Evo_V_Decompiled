.class Lcom/android/phone/SimUnlockScreen$CheckSimPin$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimUnlockScreen$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SimUnlockScreen$CheckSimPin;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/phone/SimUnlockScreen$CheckSimPin;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen$CheckSimPin$1;->this$1:Lcom/android/phone/SimUnlockScreen$CheckSimPin;

    iput-boolean p2, p0, Lcom/android/phone/SimUnlockScreen$CheckSimPin$1;->val$result:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$CheckSimPin$1;->this$1:Lcom/android/phone/SimUnlockScreen$CheckSimPin;

    iget-boolean v1, p0, Lcom/android/phone/SimUnlockScreen$CheckSimPin$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/SimUnlockScreen$CheckSimPin;->onSimLockChangedResponse(Z)V

    .line 490
    return-void
.end method
